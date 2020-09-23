print("Starting .")

LED1 = 1
LED2 = 2
LED3 = 3
LED4 = 4

INPUT1 = 9
INPUT2 = 10

--Parameters
-- pin 1~12, IO index
-- clock 1~1000, pwm frequency
-- duty 0~1023, pwm duty cycle, max 1023 (10bit)

pwm.setup(LED1, 1000, 0)
pwm.setup(LED2, 500, 0)
pwm.setup(LED3, 100, 0)
pwm.setup(LED4, 10, 0)
pwm.start(LED1)
pwm.start(LED2)
pwm.start(LED3)
pwm.start(LED4)

-- gpio.mode(5, gpio.OUTPUT) 
gpio.mode(INPUT1, gpio.INPUT) 
gpio.mode(INPUT2, gpio.INPUT)
gpio.mode(10, gpio.INPUT)
-- gpio.mode(8, gpio.INPUT)
-- state = 0

pwm.setclock(LED1, 10)
pwm.setclock(LED2, 100)
pwm.setclock(LED3, 1000)
    pwm.setduty(LED1, 10)
    pwm.setduty(LED2, 100)
    pwm.setduty(LED3, 512)    
    
--     dofile("log.lua")
-- dofile("turnOnRight.lua")
-- dofile("cyberLed.lua")

tmr.alarm(0, 500, 1, function()

    pwm.setduty(LED4, 1024-adc.read(0))
        
    -- if (state==0) then
        
    -- do
        -- state = 1
        -- gpio.write(5, gpio.HIGH)            
        -- gpio.write(6, gpio.LOW)
--        if (i> 650) then
--            i = 0
--        end
--        i=i+1
--        pwm.setduty(7, i)
--        print(i)
        -- else
        -- state = 0
        -- gpio.write(5, gpio.LOW)        
        -- gpio.write(6, gpio.HIGH)     
--        pwm.setduty(7, 800)
    -- end
end)

