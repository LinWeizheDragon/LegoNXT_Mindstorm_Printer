function pre=preparation(mA)
% Establish connection to an ultrasonic range sensor connected to sensor port 1
OpenUltrasonic(SENSOR_1);

% Reset the stopwatch
tic;

% Create an empty matrix to store the results
results = [];

% Display a message on the console
disp('Starting recording');





mA.SmoothStart = 1; % do not use the smooth start option
mA.SpeedRegulation = 1; % do not use the speed regulation option
mA.Power=-10;


mA.ResetPosition(); % establish the motor's current position as the zero position
mA.SendToNXT(); % start the motor
disp('start running');


% Keep iterating while the stopwatch reads less than five seconds
while (GetUltrasonic(SENSOR_1)>=10)
    % Add a new row to results
    % Each row stores the current time (first column) and the
    % current ultrasonic sensor reading (second column)
    results = [results; toc  GetUltrasonic(SENSOR_1)];
end

% Display a message on the console
disp('Stopping recording');

mA.Stop('Brake');
mA.WaitFor();
mA.Stop('Off');
disp('Stop running');



% Close connection to the ultrasonic sensor
CloseSensor(SENSOR_1);


% Plot the results
plot(results(:,1), results(:,2));
grid on;
xlabel('time (s)');
ylabel('ultrasonic sensor reading');

% Display some information about the results
size_results = size(results);
disp('The size of the results vector is:');
disp(size_results);
disp('The recording rate (samples per second) was:');
disp(size_results(1) / 5);


end