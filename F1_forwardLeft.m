clear, close, clc


a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")

LtMotorDir = 'D8';
LtMotorSpd = 'D10';

writeDigitalPin(a,LtMotorDir,0);
writePWMDutyCycle (a,LtMotorSpd,1); 
pause(1);
writePWMDutyCycle (a,LtMotorSpd,0);
pause(1);