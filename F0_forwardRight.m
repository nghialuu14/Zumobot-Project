clear, close, clc


a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")

RtMotorDir = 'D7';
RtMotorSpd = 'D9';

writeDigitalPin(a,RtMotorDir,0);
writePWMDutyCycle (a,RtMotorSpd,1); 
pause(1);
writePWMDutyCycle (a,RtMotorSpd,0);
pause(1);