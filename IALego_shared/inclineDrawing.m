function m=inclineDrawing(a,b,mA,mB)


% mA.SmoothStart = 1; % do not use the smooth start option
% mB.SmoothStart = 1;
% mA.SpeedRegulation = 1; % do not use the speed regulation option
% mB.SpeedRegulation = 1;
% mA.Power=10;
% mB.Power=10;
% disp('Power set: ');
% disp(mA.Power);
% disp(mB.Power);

 m=a/10;
if m<0
    m=-m;
end

 a1=a/m;
 b1=b/m;


for i=1:m
    scroll(a1,mA);
    move(b1,mB);
end
% 
% if (a<0)
%     a=-a;
%     mA.Power=-mA.Power;
% end
% if (b<0)
%     b=-b;
%     mB.Power=-mB.Power;
% end
% 
% mA.TachoLimit = a; % set the tacho limit to 1000 degrees
% mA.ActionAtTachoLimit = 'Brake';
% mB.TachoLimit = b; % set the tacho limit to 1000 degrees
% mB.ActionAtTachoLimit = 'Brake';
% % Reset the stopwatch
% tic;
% 
% 
% % Display a message on the console
% disp('Starting recording');
% 
% % Send the information in mA to the motor - it will now start turning
% mA.ResetPosition(); % establish the motor's current position as the zero position
% mA.SendToNXT(); % start the motor
% mB.ResetPosition(); % establish the motor's current position as the zero position
% mB.SendToNXT(); % start the motor
% 
% 
% 
% % Wait until the motor has completely stopped
% mA.WaitFor();
% mB.WaitFor();
% 
% % Display a message on the console
% disp('Stopping recording');





end