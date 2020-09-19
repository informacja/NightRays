
delayTime = 1250 -- us

step = 1
logicMax = 1023    -- value from 0 to 1023
fromZero = 0

for i = fromZero, maxCurent, step do
   pwm.setduty(LED4, i)
   tmr.delay(delayTime)    
   tmr.wdclr()
end

for i = fromZero, maxCurent, step do
   pwm.setduty(LED3, i)
   tmr.delay(delayTime)    
   tmr.wdclr()
end

for i = fromZero, maxCurent, step do
   pwm.setduty(LED2, i)
   tmr.delay(delayTime)   
   tmr.wdclr()
end

for i = fromZero, maxCurent, step do
   pwm.setduty(LED1, i)
   tmr.delay(delayTime)      
   tmr.wdclr()
end






