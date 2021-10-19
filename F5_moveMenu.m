clear, close, clc

a = arduino ('COM3', 'Uno');
disp ("Communicating with Arduino")
RtMotorDir = 'D7';
LtMotorDir = 'D8';
RtMotorSpd = 'D9';
LtMotorSpd = 'D10';
buzzer = 'D3';

while 1
    selection = menu ('Choose a number between 1 and 11: ','Forward','Backward','Spin Right','Spin Left','Turn Right','Turn Left','U Turn Right','U Turn Left','Speed Up','Zumo','Stop','Quit');
    switch (selection)
        case 1
            disp ("You chose Forward!")
           
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.2); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.2); %half speed
            
            playTone(a,'D3',330,0.5);
            pause(0.5);
            playTone(a,'D3',294,0.5);
            

        case 2
            disp ("You chose Backward!")
           
            writeDigitalPin(a,RtMotorDir,1); %right backward
            writePWMDutyCycle(a,RtMotorSpd,.2); %half speed
            writeDigitalPin(a,LtMotorDir,1); %left backward
            writePWMDutyCycle(a,LtMotorSpd,.2); %half speed
            
             playTone(a,'D3',294,0.5);
             pause(0.5);
             playTone(a,'D3',330,0.5);
           

        case 3
            disp ("You chose Spin right!")
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.28); %half speed
            writeDigitalPin(a,RtMotorDir,1); %right backward
            writePWMDutyCycle (a,RtMotorSpd,.28); %half speed
            
            
        case 4
            disp ("You chose Spin left!")
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.28);  %half speed
            writeDigitalPin(a,LtMotorDir,1); %right backward
            writePWMDutyCycle (a,LtMotorSpd,.28); %half speed
            
        case 5
            disp ("You chose Turn Right")
            writePWMDutyCycle (a,RtMotorSpd,0);
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.55); %half speed
            pause (1)
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.2); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.2); %half speed
            
        case 6
            disp ("You chose Turn Left")
            writePWMDutyCycle (a,LtMotorSpd,0);
            writeDigitalPin(a,RtMotorDir,0); %left forward
            writePWMDutyCycle (a,RtMotorSpd,.55); %half speed
            pause (1)
            writeDigitalPin(a,LtMotorDir,0); %right forward
            writePWMDutyCycle (a,LtMotorSpd,.2); %half speed
            writeDigitalPin(a,RtMotorDir,0); %left forward
            writePWMDutyCycle (a,RtMotorSpd,.2); %half speed
            
        
        case 7
            disp ("You chose U Turn Right")
            writePWMDutyCycle (a,RtMotorSpd,0);
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.55); %half speed
            pause (1.5)
            
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.35); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.35); %half speed
            
        case 8
            disp ("You chose U Turn Left")
            writePWMDutyCycle (a,LtMotorSpd,0);
            writeDigitalPin(a,RtMotorDir,0); %left forward
            writePWMDutyCycle (a,RtMotorSpd,.55); %half speed
            pause (1.5)
            writeDigitalPin(a,LtMotorDir,0); %right forward
            writePWMDutyCycle (a,LtMotorSpd,.35); %half speed
            writeDigitalPin(a,RtMotorDir,0); %left forward
            writePWMDutyCycle (a,RtMotorSpd,.35); %half speed
        case 9
            disp ("You chose Speed up!")
           
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,1); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,1); %half speed
        case 10
            
            disp ("You chose Zumo")
            %forward
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.5); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.5); %half speed
            pause(0.5);
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
            %spin right
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.53); %half speed
            writeDigitalPin(a,RtMotorDir,1); %right backward
            writePWMDutyCycle (a,RtMotorSpd,.53); %half speed
            pause(0.5);
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
            %forward
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.7); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,.7); %half speed
            pause(0.5);
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
            %spin left
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,.53);  %half speed
            writeDigitalPin(a,LtMotorDir,1); %right backward
            writePWMDutyCycle (a,LtMotorSpd,.53); %half speed
            pause(0.5);
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
            %forward
            writeDigitalPin(a,RtMotorDir,0); %right forward
            writePWMDutyCycle (a,RtMotorSpd,1); %half speed
            writeDigitalPin(a,LtMotorDir,0); %left forward
            writePWMDutyCycle (a,LtMotorSpd,1); %half speed
            pause(0.5);
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
        case 11
            disp ("You chose Stop")
            writePWMDutyCycle (a,RtMotorSpd,0); %stop right
            writePWMDutyCycle (a,LtMotorSpd,0); %stop left
            
        case 12
            disp ("You chose Quit")
            disp("End program")
            break;
    end
end;

clear a