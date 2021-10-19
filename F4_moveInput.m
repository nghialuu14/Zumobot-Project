clear, close, clc

a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")
RtMotorDir = 'D7';
LtMotorDir = 'D8';
RtMotorSpd = 'D9';
LtMotorSpd = 'D10';

while 1
    selection = input ('Choose a number between 1 and 4: ');
    switch (selection)
        case 1
            disp ("You chose Forward!")
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.5); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.5); %half speed
            pause(1)

            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            pause(1)
        case 2
            disp ("You chose Backward!")
            writeDigitalPin(a,RtMotorDir,1); %right backward
            writePWMDutyCycle(a,RtMotorSpd,.5); %half speed
            writeDigitalPin(a,LtMotorDir,1); %left backward
            writePWMDutyCycle(a,LtMotorSpd,.5); %half speed
            pause(1)

            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            pause(1)
        case 3
            disp ("You chose Turn right!")
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.5); %half speed
            pause(1);
            
            writePWMDutyCycle (a,LtMotorSpd,0); %left stop
            pause(1);
        case 4
            disp ("You chose Turn left!")
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.5);  %half speed
            pause(1);
            
            writePWMDutyCycle (a,RtMotorSpd,0); %right stop
            pause(1);
        otherwise
            disp("End program")
            break;
    end
end;

clear a