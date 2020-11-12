/*
 * motors.c
 *
 *  Created on: Sep 10, 2020
 *      Author: Tyler Price
 */

#include "motors.h"

/*
 * This function should return PWM_MAX if pwm > PWM_MAX, -PWM_MAX if pwm < -PWM_MAX, and pwm otherwise.
 */
float limitPWM(float pwm)
{
	if(pwm > PWM_MAX)
			return PWM_MAX;
	else
		if(pwm < -PWM_MAX)
			return -PWM_MAX;
		else
			return pwm;
}

/*
 * This function controls the left motor speed and direction. We do this by setting the timer pulse value for the appropriate channel.
 * All our H-bridge inputs use timer 4. TIM4->CCRX = (uint32_t) (limitPWM(pwm) * MAX_TIMER_COUNTS) sets the pulse value for channel x.
 * For the left motor, setting channel 2 makes the wheel spin forward and setting channel 1 makes the wheel spin backwards.
 *
 * The parameter pwm is a value between 0 and 1, representing the percentage of maximum speed to turn the motor. e.g. 0.5 is half speed.
 *
 * IMPORTANT: NEVER SET BOTH THE FORWARD AND BACKWARD CHANNELS TO NON-ZERO VALUES AT THE SAME TIME. As mentioned in lecture, this can
 * destroy your h-bridge. When setting a channel, always set the other channel to zero first.
 *
 * Implement this function to make the left wheel spin forwards when pwm is >= 0, and spin backwards when pwm < 0.
 */
void setMotorLPWM(float pwm)
{
	if(pwm >= 0)	//if pwm >= 0, make wheel spin forwards (channel 2 is forwards)
	{
		TIM4->CCR1 = (uint32_t) 0;										//first set backwards to 0
		TIM4->CCR2 = (uint32_t) (limitPWM(pwm) * MAX_TIMER_COUNTS);		//then set forwards to speed
	}
	else			//if pwm < 0, make wheel spin backwards (channel 1 is backwards)
	{
		TIM4->CCR2 = (uint32_t) 0;										//first set forwards to 0
		TIM4->CCR1 = (uint32_t) (limitPWM(-pwm) * MAX_TIMER_COUNTS);	//then set backwards to speed, to -pwm since speed can only be positive
	}
}

/*
 * This function controls the right motor speed and direction. We do this by setting the timer pulse value for the appropriate channel.
 * All our H-bridge inputs use timer 4. TIM4->CCRX = (uint32_t) (limitPWM(pwm) * MAX_TIMER_COUNTS) sets the pulse value for channel x.
 * For the right motor, setting channel 4 makes the wheel spin forward and setting channel 3 makes the wheel spin backwards.
 *
 * The parameter pwm is a value between 0 and 1, representing the percentage of maximum speed to turn the motor. e.g. 0.5 is half speed.
 *
 * IMPORTANT: NEVER SET BOTH THE FORWARD AND BACKWARD CHANNELS TO NON-ZERO VALUES AT THE SAME TIME. As mentioned in lecture, this can
 * destroy your h-bridge. When setting a channel, always set the other channel to zero first.
 *
 * Implement this function to make the right wheel spin forwards when pwm is >= 0, and spin backwards when pwm < 0.
 */
void setMotorRPWM(float pwm)
{
	if(pwm >= 0)	//if pwm >= 0, make wheel spin forwards (channel 4 is forwards)
	{
		TIM4->CCR3 = (uint32_t) 0;										//first set backwards to 0
		TIM4->CCR4 = (uint32_t) (limitPWM(pwm) * MAX_TIMER_COUNTS);		//then set forwards to speed
	}
	else			//if pwm < 0, make wheel spin backwards (channel 3 is backwards)
	{
		TIM4->CCR4 = (uint32_t) 0;										//first set forwards to 0
		TIM4->CCR3 = (uint32_t) (limitPWM(-pwm) * MAX_TIMER_COUNTS);	//then set backwards to speed, to -pwm since speed can only be positive
	}
}

/*
 * Using the two previous setMotorPWM functions, implement resetMotors to set the PWM for both wheels to zero, effectively stopping them.
 */
void resetMotors()
{
	setMotorLPWM(0);	//set left motor pwm to 0
	setMotorRPWM(0);	//set right motor pwm to 0
}

