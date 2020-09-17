
--
pwm.setup(2, 100, 1000)
pwm.start(2)
history = 0;
--pin = 1
--
--pwm.setup(pin, 100, 1000)
--pwm.start(pin)
-- Setup WiFi connection
--wifi.setmode(wifi.STATION)
--wifi.sta.config("SSID","PASSSSSS")
--
--  print(wifi.sta.getip())ww


pin = 4
   print(type(pin))
pwm.setup(pin, 400, 010)
pwm.start(pin)

-- Loop for running LED's from PWM value 0 to PWM value 1000 in steps of 1 including a delay to slow down fade and using tmr.wdclr() to prevent the hardware watchdog killing the fade
while(1) do
    for i = 0, 1015, 5 do
       pwm.setduty(pin, i)
       tmr.delay(12500)         
       pwm.setduty(2, i)
    --   print(i)
       tmr.wdclr()
    end
      for i = 1023, 4, -5 do      
       pwm.setduty(2, i)
       pwm.setduty(pin, i)
       tmr.delay(12500)
        print( adc.read(0), i )
    --   print(i)
       tmr.wdclr()
    end
    
    if (adc.read(0) ~= history) then
        if (  math.abs(adc.read(0) - history) > 100 ) then
            history = adc.read(0)
            print( "his ", history)
        end
    end   
end
--
--frequency = 500
--local duty = 0
--local i = 10
--
--pwm.setup(pin,frequency,duty)
--pwm.start(pin)
--
--tmr.alarm(0, 500, 1, function()
--    if (duty>=1000-i) then
--        duty = 0        
--        pwm.setduty(pin,duty)
--        else
--        duty = duty + i
----        print(type(duty))
--        pwm.setduty(pin,duty)   
--    end
--end)
