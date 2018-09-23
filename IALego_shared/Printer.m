
%scroll(-2000);

COM_CloseNXT('all');
% Establish connection with the NXT brick
MyNXT = COM_OpenNXT();
COM_SetDefaultNXT(MyNXT);

%OpenLight(SENSOR_1, 'ACTIVE');


mA = NXTMotor('A'); % Scroll Controller
mB = NXTMotor('B'); % Move Controller
mC = NXTMotor('C'); % Drop controller



%move(500,mB);
%for i = 1:5
%   move(-45,mB);
%   move(45,mB);
%end
%inclineDrawing(1000,2000,mA,mB);

preparation(mA);
scroll(160,mA);

% Establish connection to a touch sensor connected to sensor port 1
OpenSwitch(SENSOR_2);
disp('Waiting for signal...');

AdjustOver = false;

 while (AdjustOver==false)
     while (GetSwitch(SENSOR_2)==0)
         
     end
     tic
     while(GetSwitch(SENSOR_2)==1)
         
     end
     if (toc<=2)
     	 disp('Adjusting the Pen...');
         drop(-2,mC);
         move(200,mB);
         move(-200,mB);
     elseif (toc<=4)
         disp('start without adjustment...')
         AdjustOver=true;
         move(200,mB);
     else
     	disp('Adjustment is over and initializing...');
         AdjustOver=true;
         drop(25,mC); %pull up the pen to the initial position
         move(200,mB);
     end
 end
disp('Ready for Printing...');
Text = input('Please input the text: ','s');

disp('Start Printing...');
CloseSensor(SENSOR_2);
% move(100,mB);
% scroll(100,mA);
% move(-100,mB);
% scroll(-100,mA);

printCUED(mA,mB,mC,Text);

disp('Printing done...Outputing...');
% 
% 
% dropAngle=43;

% preparation(mA);
% %scroll(-1000, mA);
% move(200, mB);
% drop(-dropAngle, mC);
% move(50, mB);
% move(-50, mB);
% scroll(100, mA);
% scroll(-100, mA);
% drop(dropAngle, mC);
% move(-200,mB);
% scroll(500, mA);


%preparation(mA);
% move(20,mB);
% inclineDrawing(100,100,mA,mB);
% move(-20,mB);
% inclineDrawing(-100,-100,mA,mB);

COM_CloseNXT(MyNXT);
COM_CloseNXT('all');
disp('Program finished');
