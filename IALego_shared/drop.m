function t =drop(x,mA)

mA.SmoothStart = 1; % do not use the smooth start option
mA.SpeedRegulation = 1; % do not use the speed regulation option
mA.Power=10;
if (x<0)
    x=-x;
    mA.Power=-mA.Power;
end
mA.TachoLimit = x; % set the tacho limit to 1000 degrees
mA.ActionAtTachoLimit = 'Brake';
% Reset the stopwatch
tic;

% Create an empty matrix to store the results
%results = [];

% Display a message on the console
disp('Starting recording');

% Send the information in mA to the motor - it will now start turning
mA.ResetPosition(); % establish the motor's current position as the zero position
mA.SendToNXT(); % start the motor

% Keep iterating while the stopwatch reads less than five seconds
data=mA.ReadFromNXT();

while data.IsRunning
    % Add a new row to results
    % Each row stores the current light sensor reading
    %data=mA.ReadFromNXT();
    %results = [results; toc  data.Position];
    % Read the current motor status
    data = mA.ReadFromNXT(); % overwrite data with updated information about the motor's current state
end

% Wait until the motor has completely stopped
mA.WaitFor();

% Display a message on the console
disp('Stopping recording');


% Close connection to the NXT brick



end