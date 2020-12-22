/*
 * pid.c
 *
 *  Created on: Sep 27, 2020
 *      Author: Tyler Price
 */

#include "main.h"
#include "motors.h"
#include "encoders.h"

//global variables (so they show up in Live Expressions debugging interface)

	float kP_distance = 0.3;					//how aggresively we want to respond to distance errors
	float kD_distance = 0;						//factor for responding to how close we are to reaching our target distance

	float kP_angle = 0.1;						//how aggresively we want to respond to angle errors
	float kD_angle = 0;							//factor for responding to how close we are to reaching our target angle

	int angleError = 0;							//errors in the angle (in encoder counts)
	int oldAngleError = 0;						//for calculating kD_angle

	float distanceError = 100;					//how many encoder counts we are from our target (in encoder counts)
	float oldDistanceError = 0;					//for calculating kD_distance

	float angleCorrection;						//correction values in pwm values
	float distanceCorrection;

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

	angleError = getRightEncoderCounts() - getLeftEncoderCounts();								//the error is the difference between the encoder counts
	angleCorrection = (kP_angle * angleError) + (kD_angle * (angleError - oldAngleError));		//the correction in pwm values

	if(angleCorrection >= 0.2)																	//limit the angle correction so that the motor still gets enough power after angleCorrection is subtracted from distance correction
		angleCorrection = 0.2;
	else if(angleCorrection <= -0.2)
			angleCorrection = -0.2;

	oldAngleError = angleError;																	//set old error to current error (for derivative component)

	distanceError = 100;																		//static value since we are trying to forward indefinitely
	//distanceCorrection = (kP_distance * distanceError) + (kD_distance * (distanceError - oldDistanceError));	//correction
	distanceCorrection = -0.4;																	//static since we want to move forward indefinitely right now
	oldDistanceError = distanceError; 															//set old error to the current error

	setMotorLPWM(distanceCorrection + angleCorrection);		//set motors to corrected values
	setMotorRPWM(distanceCorrection - angleCorrection);

}

void setPIDGoalD(int16_t distance)
{
	/*
	 * For assignment 3.1: this function does not need to do anything.
	 * For assignment 3.2: this function should set a variable that stores the goal distance.
	 */
}

void setPIDGoalA(int16_t angle)
{
	/*
	 * For assignment 3.1: this function does not need to do anything
	 * For assignment 3.2: This function should set a variable that stores the goal angle.
	 */
}

int8_t PIDdone(void)
{
	/*
	 * For assignment 3.1: this function does not need to do anything (your rat should just drive straight indefinitely)
	 * For assignment 3.2:This function should return true if the rat has achieved the set goal. One way to do this by having updatePID() set some variable when
	 * the error is zero (realistically, have it set the variable when the error is close to zero, not just exactly zero). You will have better results if you make
	 * PIDdone() return true only if the error has been sufficiently close to zero for a certain number, say, 50, of SysTick calls in a row.
	 */

	return 1;
}
