clear all;
clc;
 fprintf('\nPress any key: ') ;
% prompt='Enter any key';
%ch=input(prompt);
ch=getkey;
answer=1;
arduino=serial('COM15','BaudRate',9600); % create serial communication object on port COM15
fopen(arduino); % initiate arduino communication
 while(answer)
      fprintf(arduino,'%s',char(k)); % send answer variable content to arduino
      answer=input('Enter value(0=EXIT PROGRAM): ');
   end
  fclose(arduino); % end communication with arduino
  
  