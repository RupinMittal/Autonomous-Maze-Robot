/*
 * encoders.c
 *
 *  Created on: Sep 27, 2020
 *      Author: Tyler Price
 */

#include "main.h"
#include "encoders.h"

/*
 * Implement this function so it returns the right encoder value
 */
int16_t getRightEncoderCounts()
{
	return (int16_t)TIM8->CNT;		//return the right encoder count
}

/*
 * Implement this function so it returns the left encoder value
 */
int16_t getLeftEncoderCounts()
{
	return (int16_t)TIM2->CNT;		//return the left encoder count
}

/*
 * This function has already been implemented for you. Enjoy! :)
 */
void resetEncoders()
{
	TIM8->CNT = (int16_t) 0;
	TIM2->CNT = (int16_t) 0;
}
