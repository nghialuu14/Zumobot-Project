clear, close, clc

a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")
RtMotorDir = 'D7';
LtMotorDir = 'D8';
RtMotorSpd = 'D9';
LtMotorSpd = 'D10';

writeDigitalPin(a,LtMotorDir,0);
writePWMDutyCycle (a,LtMotorSpd,1);
pause(1)

writePWMDutyCycle (a,LtMotorSpd,0);
pause(1)

writeDigitalPin(a,RtMotorDir,0); %backward
writePWMDutyCycle(a,RtMotorSpd,1); %full speed
pause(1)

writePWMDutyCycle (a,RtMotorSpd,0);
pause(1)
