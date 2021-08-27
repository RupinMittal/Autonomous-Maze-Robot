# Autonomous Maze Robot

## Made with IEEE UCLA

### Description

This project is an autononmous maze navigating robot. It was built from scratch with 
the help of IEEE at UCLA (and my leads Bradley Schulz and Tyler Price).

To see the code, go to Code-SRC.
To run the code on your micromous, download the MicroMouse-STM32IDE.zip file, and open in the STM32 Cube IDE, 
so that you have the STM-configured files ready to go. Your robot will need to match the same port connections
in the schematics.

The test for the robots was a modified verison of the AAMC competition at UCLA where the top right corner is
considered the end of the maze.

### Software

The microcontroller used was the STM 32 Microcontoller, so the embedded programs were written in 
the C programming language. 

Includes:
- Motor Control (PID)
- IR Sensor based control
- Floodfill Algorithm
- Simulator (the base of the simulator was written by Tyler Price at IEEE)

The files included in this repository are only the code I wrote, and not the files automatically 
configured by the STM 32 Cube IDE. 

### Hardware 

The base PCB was built by Bradley Schulz and Tyler Price from IEEE UCLA. I have made 
my own schematic designs for the whole project (included in this repository). All schematics were 
made with EAGLE. I designed the IR sensor PCB from scratch using EAGLE software as well.

- Power Board Schematic
- H-Bridge Schematic
- IR Sensor PCB Board