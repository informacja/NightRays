--dofile("pwm.lua")
print("Starting .")

gpio.mode(6,gpio.OUTPUT) 
gpio.mode(5,gpio.OUTPUT) 
state = 0
 
tmr.alarm(0, 500, 1, function()
    if (state==0) then
        state = 1
        gpio.write(5, gpio.HIGH)            
        gpio.write(6, gpio.LOW)
--        if (i> 650) then
--            i = 0
--        end
--        i=i+1
--        pwm.setduty(7, i)
--        print(i)
        else
        state = 0
        gpio.write(5, gpio.LOW)        
        gpio.write(6, gpio.HIGH)     
--        pwm.setduty(7, 800)
    end
end)

