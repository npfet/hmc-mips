/*
 * lightsOut.h
 * 
 * Created by Matt McKnett on 4/1/07
 * VLSI Spring 2007
 * 
 * This is a demo program for the hmc-mips project.  It is a
 * "lights out" game playable on the LCD display onboard the
 * PCB board.
 */

#ifndef LIGHTSOUT_INCLUDED
#define LIGHTSOUT_INCLUDED 1

#define NUM_LIGHTS 16

#define LIGHT_OFF 0
#define LIGHT_ON 1

int lights[NUM_LIGHTS];
int lightsOut;
int lightPosition;

/* readInput shall return the button that was pressed, or 0 if no
   button is being pressed. */
char* readInput();

/* update shall shift the lightPosition carat if it receives a 
   left or right button, or else it shall flip the corresponding
   lights if it sees an up button. */
void update(char* input);

/* areLightsOut returns true if all of the lights are out. */
int areLightsOut();

/* print the lights and carat out in an understandable way. */
void printLights();

#endif /* LIGHTSOUT_INCLUDED. */
