/*
 * pid.c
 *
 *  Created on: Sep 27, 2020
 *      Author: Tyler Price
 */

#include "main.h"
#include "motors.h"
#include "encoders.h"
#include "pid.h"		//I added this in since it wasn't there before

//global variables (so they show up in Live Expressions debugging interface)

	const float kP_distance = 0.3;					//how aggresively we want to respond to distance errors
	const float kD_distance = 0.2;					//factor for responding to how close we are to reaching our target distance

	const float kP_angle = 0.2;						//how aggresively we want to respond to angle errors
	const float kD_angle = 0.2;						//factor for responding to how close we are to reaching our target angle

	int angleError = 0;							//errors in the angle (in encoder counts)
	int oldAngleError = 0;						//for calculating kD_angle

	float distanceError = 0;					//how many encoder counts we are from our target (in encoder counts)
	float oldDistanceError = 0;					//for calculating kD_distance

	float angleCorrection;						//correction values in pwm values
	float distanceCorrection;

	int16_t goal_distance = 0;					//goal values to be updated by setPIDGoal functions
	int16_t goal_angle = 0;

	int count_Error_Zero = 0; 					//keeps track of how many SysTick calls the error has been sufficiently close to zero for
	const int NUM_ZERO_ERROR_FOR_GOAL = 10; 	//number of calls with close to zero error required for goal to be met
	const double zero_error = 10; 				//max error that is considered sufficiently close to zero error
	int goal_met = 0; 							//is the goal met of not

	const float MAX_ANGLE_CORRECTION = 0.3;		//maximum correction values
	const float MAX_DISTANCE_CORRECTION = 0.5;

void resetPID()
{
	/*
	 * For assignment 3.1: This function does not need to do anything
	 * For assignment 3.2: This function should reset all the variables you define in this file to help with PID to their default
	 *  values. You should also reset your motors and encoder counts (if you tell your rat to turn 90 degrees, there will be a big
	 * difference in encoder counts after it turns. If you follow that by telling your rat to drive straight without first
	 * resetting the encoder counts, your rat is going to see a huge angle error and be very unhappy).
	 *
	 * You should additionally set your distance and error goal values (and your oldDistanceError and oldAngleError) to zero.
	 */

	resetEncoders();			//reset motors and encoders
	resetMotors();

	angleError = 0;				//reset errprs
	oldAngleError = 0;

	distanceError = 0;
	oldDistanceError = 0;

	angleCorrection = 0;		//reset corrections
	distanceCorrection = 0;

	goal_angle = 0;				//reset goals, otherwise it will move twice instead of just once, since PID will reset and it will try to reach goal again since updatePID() is still running
	goal_distance = 0;

	count_Error_Zero = 0;		//reset values for testing if PID is done
	goal_met = 0;

}

void updatePID()
{
	/*
	 * This function will do the heavy lifting PID logic. It should do the following: read the encoder counts to determine an error,
	 * use that error along with some PD constants you determine in order to determine how to set the motor speeds, and then actually
	 * set the motor speeds.
	 *
	 * For assignment 3.1: implement this function to get your rat to drive forwards indefinitely in a straight line. Refer to pseudocode
	 * example document on the google drive for some pointers
	 *
	 * TIPS (assignment 3.1): Create kPw and kDw variables, use a variable to store the previous error for use in computing your
	 * derivative term. You may get better performance by having your kDw term average the previous handful of error values instead of the
	 * immediately previous one, or using a stored error from 10-15 cycles ago (stored in an array?). This is because systick calls so frequently
	 * that the error change may be very small and hard to operate on.
	 *
	 * For assignment 3.2: implement this function so it calculates distanceError as the difference between your goal distance and the average of
	 * your left and right encoder counts. Calculate angleError as the difference between your goal angle and the difference between your left and
	 * right encoder counts. Refer to pseudocode example document on the google drive for some pointers.
	 */

	angleError = goal_angle - (getLeftEncoderCounts() - getRightEncoderCounts());					//the error is the difference between the goal angle the delta of the encoder counts
	angleCorrection = (kP_angle * angleError) + (kD_angle * (angleError - oldAngleError));			//the correction in pwm values
	oldAngleError = angleError;																		//set old error to current error (for derivative component)

	angleCorrection = limit_angle_correction(angleCorrection);

	distanceError = goal_distance + ((getLeftEncoderCounts() + getRightEncoderCounts()) / 2);					//the error is goal distance - average of encoder counts
	distanceCorrection = (kP_distance * distanceError) + (kD_distance * (distanceError - oldDistanceError));	//the correction in pwm values
	oldDistanceError = distanceError; 																			//set old error to the current error

	distanceCorrection = limit_distance_correction(distanceCorrection);

	setMotorLPWM(distanceCorrection + angleCorrection);									//set motors to corrected values
	setMotorRPWM(distanceCorrection - angleCorrection);

	if ((absolute_value(angleError) < zero_error) && (absolute_value(distanceError) < zero_error))			//if error is sufficiently close to zero
		count_Error_Zero++;																					//increment number of times the error has been consecutively close to zero
	else
		count_Error_Zero = 0;
	if (count_Error_Zero > NUM_ZERO_ERROR_FOR_GOAL)															//if error has been sufficiently close to zero enough times
		goal_met = 1;																						//the goal has been met
}

void setPIDGoalD(int16_t distance)
{
	/*
	 * For assignment 3.1: this function does not need to do anything.
	 * For assignment 3.2: this function should set a variable that stores the goal distance.
	 */

	goal_distance = distance;
}

void setPIDGoalA(int16_t angle)
{
	/*
	 * For assignment 3.1: this function does not need to do anything
	 * For assignment 3.2: This function should set a variable that stores the goal angle.
	 */

	goal_angle = angle;
}

int8_t PIDdone(void)
{
	/*
	 * For assignment 3.1: this function does not need to do anything (your rat should just drive straight indefinitely)
	 * For assignment 3.2:This function should return true if the rat has achieved the set goal. One way to do this by having updatePID() set some variable when
	 * the error is zero (realistically, have it set the variable when the error is close to zero, not just exactly zero). You will have better results if you make
	 * PIDdone() return true only if the error has been sufficiently close to zero for a certain number, say, 50, of SysTick calls in a row.
	 */

	return goal_met;
}

float limit_angle_correction(float angle_corr)
{
	if(angle_corr > MAX_ANGLE_CORRECTION)																		//limit the angle correction so that the motor still gets enough power after angleCorrection is subtracted from distance correction
			angle_corr = MAX_ANGLE_CORRECTION;
	else if(angle_corr < -MAX_ANGLE_CORRECTION)
			angle_corr = -MAX_ANGLE_CORRECTION;

	return angle_corr;
}

float limit_distance_correction(float distance_corr)
{
	if(distance_corr > MAX_DISTANCE_CORRECTION)																	//limit the distance correction so that it doesn't overpower angleCorrection
			distance_corr = MAX_DISTANCE_CORRECTION;
	else if(distance_corr < -MAX_DISTANCE_CORRECTION)
			distance_corr = -MAX_DISTANCE_CORRECTION;

	return distance_corr;
}

float absolute_value(float num)
{
	if (num < 0)
		return -num;
	return num;
}
