
tmr.alarm(0, 100, 1, function()

    if( gpio.read(INPUT1) ) then dofile("turnOnRight.lua") end
    if( gpio.read(INPUT2) ) then pwm.setduty(LED4, 0) end
    print("hey there") 
end)
-- timer:interval(10) -- actually, 3 seconds is better!
-- timer:start()