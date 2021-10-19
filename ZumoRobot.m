clear, close, clc

a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")
RtMotorDir = 'D7';
LtMotorDir = 'D8';
RtMotorSpd = 'D9';
LtMotorSpd = 'D10';


selection = menu ('Choose a number between 1 and 4: ','Forward', 'Backward', 'Turn right', 'Turn left');
switch (selection)
    case 1
        disp ("You chose Forward!")
    case 2
        disp ("You chose Backward!")
    case 3
        disp ("You chose Turn right!")
    case 4
        disp ("You chose Turn left!")
    otherwise
        disp ("error")
end

writeDigitalPin(a,RtMotorDir,0); %forward
writePWMDutyCycle (a,RtMotorSpd,1); %half speed
writeDigitalPin(a,LtMotorDir,0);
writePWMDutyCycle (a,LtMotorSpd,1);
pause(1)

writeDigitalPin(a,RtMotorDir,1); %backward
writePWMDutyCycle(a,RtMotorSpd,1); %full speed
writeDigitalPin(a,LtMotorDir,1); 
writePWMDutyCycle(a,LtMotorSpd,1); 
pause(1)

%right motor stop
writePWMDutyCycle (a,RtMotorSpd,0); %stop motor

disp("End program")
clear a