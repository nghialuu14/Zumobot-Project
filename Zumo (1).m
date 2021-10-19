clear, close, clc

a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")
RtMotorDir = 'D7';
LtMotorDir = 'D8';
RtMotorSpd = 'D9';
LtMotorSpd = 'D10';
buzzer = 'D3';

while 1
    selection = input ('Choose a number between 1 and 11: ');
    switch (selection)
        case 5
            disp ("You chose Forward!")
           
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.5); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.5); %half speed
            
            playTone(a,'D3',330,0.5);
            playTone(a,'D3',294,0.5);
            

        case 2
            disp ("You chose Backward!")
           
            writeDigitalPin(a,RtMotorDir,1); %right backward
            writePWMDutyCycle(a,RtMotorSpd,.5); %half speed
            writeDigitalPin(a,LtMotorDir,1); %left backward
            writePWMDutyCycle(a,LtMotorSpd,.5); %half speed
            
             playTone(a,'D3',294,0.5);
             playTone(a,'D3',330,0.5);
           

        case 3
            disp ("You chose Spin right!")
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.28); %half speed
            writeDigitalPin(a,RtMotorDir,1); %right backward
            writePWMDutyCycle (a,RtMotorSpd,.28); %half speed
            
            
        case 1
            disp ("You chose Spin left!")
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.28);  %half speed
            writeDigitalPin(a,LtMotorDir,1); %right backward
            writePWMDutyCycle (a,LtMotorSpd,.28); %half speed
            
        case 8
            disp ("You chose Speed up!")
           
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,1); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,1); %half speed
            
            
        case 0
            disp ("You chose Stop")
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
        case 9
            disp ("You chose Quit")
            disp("End program")
            break;
    end
end;

clear a