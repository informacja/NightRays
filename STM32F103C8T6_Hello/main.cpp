#include "stm32f103c8t6.h"
#include "mbed.h"

#define STEP (0.005f)

#define ANSI_COLOR_RED "\x1b[31m"
#define ANSI_COLOR_GREEN "\x1b[32m"
#define ANSI_COLOR_YELLOW "\x1b[33m"
#define ANSI_COLOR_BLUE "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN "\x1b[36m"
#define ANSI_COLOR_RESET "\x1b[0m"

// -----------------------------------------------------------------------------

void fadeIn( double* d ){    

//    if (*d < 1.0f){
//        *d  += STEP;
//        wait_ms(1);/
//    } else
     if (*d < 10.0f){
        *d  += STEP;
//        wait_ms(1);
    }
}
void fadeOut( double* d ){
    if (*d > 0.0f) {
        *d  -= STEP;
    }
}  

// -----------------------------------------------------------------------------
  
int main() {
    confSysClock();     //Configure system clock (72MHz HSE clock, 48MHz USB clock)
    
    Serial  pc(PA_2, PA_3, 115200);
    DigitalOut  myled(LED1);
    PwmOut pwm3(PB_13);
    PwmOut pwm4(PB_14);    
    PwmOut pwm5(PB_15);    
    DigitalIn PIR(PB_10); // PIR Signal   //D8
    
    double fill = 0;
    bool goUp = true, make2 = false;
    int PIR_sensor;   // declare variable for PIR input data
    static double fillCounter(0);
    
    pwm3.period(1e-3);
    pwm4.period(1e-3);
    pwm5.period(1e-3);
    
    while(1) 
    {       
        PIR_sensor = PIR; // Check input signal from PIR pin 
        if(PIR_sensor)
            pc.printf("PIR Value : " ANSI_COLOR_RED "%d\r\n", PIR_sensor);
        else
            pc.printf("PIR Value : " ANSI_COLOR_GREEN "%d\r\n", PIR_sensor);
        myled = !PIR_sensor; // PIR(HIGH) == LED On // PIR(LOW) == LED Off
//        wait(0.1f);
        
        if (fill > 1) { goUp = false;  wait(1); myled = false; }
        if (fill < 0) { goUp = true; myled = true; } 
        
        if (goUp) {
            fill += STEP;
        }
        else {
            fill -= STEP;
        }
        
                                     
              
//        pwm3.write(fillCounter);          // shorthand for led.write()
        pc.printf( ANSI_COLOR_RESET "fillCounter: %lf fill: %lf\r\n", fillCounter, fill);
        pwm3 = fillCounter;
        pwm4 = fill;
        pwm5 = 1.0f - fill;
        myled = !PIR_sensor; 
        
        if ( make2 == true )
        {
            fadeIn(&fillCounter);   
            if ( fillCounter > 2 ) { make2 = false; }
            continue;   // avoid freeze in rnage 1-2 seconds
        }  
        
        if ( PIR_sensor ) { fadeIn(&fillCounter); make2 = true; }
        else              { fadeOut(&fillCounter);  }            
              
//        led = fill;
//    pwm1.pulsewidth(2);   // alternative to led.write, set duty cycle time in seconds
//    pwm1.write(fill); 
        // The on-board LED is connected, via a resistor, to +3.3V (not to GND). 
        // So to turn the LED on or off we have to set it to 0 or 1 respectively
//        myled = 0;      // turn the LED on
//        wait_ms(1);   // 200 millisecond
//        myled = 1;      // turn the LED off
//        wait_ms(1000);  // 1000 millisecond
//        pc.printf("Blink\r\n");
    }
}
 