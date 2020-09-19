
delayTime = 1250 -- us

step = -1
logicMax = 0    -- value from 0 to 1023
fromZero = 1023

-- for i = fromZero, logicMax, step do
--    pwm.setduty(LED1, i)
--    tmr.delay(delayTime)      
--    -- tmr.wdclr()
-- end

-- for i = fromZero, logicMax, step do
--    pwm.setduty(LED2, i)
--    tmr.delay(delayTime)   
--    -- tmr.wdclr()
-- end

-- for i = fromZero, logicMax, step do
--    pwm.setduty(LED3, i)
--    tmr.delay(delayTime)    
--    -- tmr.wdclr()
-- end

for i = fromZero, logicMax, step do
   if(tmr.now() % delayTime == 0) then
      pwm.setduty(LED4, i)
   else 
      i = i - step;
   end
   -- tmr.delay(delayTime)    
   -- tmr.wdclr()
end

