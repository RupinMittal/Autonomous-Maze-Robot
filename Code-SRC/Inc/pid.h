/*
 * pid.h
 *
 *  Created on: Sep 27, 2020
 *      Author: Tyler Price
 */

#ifndef INC_PID_H_
#define INC_PID_H_

#include "main.h"

void resetPID(void);
void updatePID(void);
void setPIDGoalD(int16_t distance);
void setPIDGoalA(int16_t angle);
int8_t PIDdone(void); // There is no bool type (try it?). True/False values are represented as 1 or 0.

float limit_angle_correction(float angle_corr);
float limit_distance_correction(float distance_corr);
float absolute_value(float num);

#endif /* INC_PID_H_ */
