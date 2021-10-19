clear, close, clc

a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")
RtMotorDir = 'D7';
LtMotorDir = 'D8';
RtMotorSpd = 'D9';
LtMotorSpd = 'D10';

writeDigitalPin(a,RtMotorDir,0); %forward
writePWMDutyCycle (a,RtMotorSpd,.5); %half speed
writeDigitalPin(a,LtMotorDir,0);
writePWMDutyCycle (a,LtMotorSpd,.5);
pause(1)

writePWMDutyCycle (a,RtMotorSpd,0);
writePWMDutyCycle (a,LtMotorSpd,0);
pause(1)

writeDigitalPin(a,RtMotorDir,1); %backward
writePWMDutyCycle(a,RtMotorSpd,.5); %full speed
writeDigitalPin(a,LtMotorDir,1); 
writePWMDutyCycle(a,LtMotorSpd,.5); 
pause(1)

writePWMDutyCycle (a,RtMotorSpd,0);
writePWMDutyCycle (a,LtMotorSpd,0);
pause(1)
