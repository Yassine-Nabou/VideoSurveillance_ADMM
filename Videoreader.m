clear all;
R=VideoReader ('visiontraffic.avi'); %creates object v to read video data from the file named filename
frameRGB = readFrame(R);
size (frameRGB)
hold on
j=0;
for i=100:150 
frames = read(R,i);
size(frames)
imshow(frames)
j=j+1;
end






















%% Estimating Optical Flow
% This example uses the Farneback Method to to estimate the direction and speed of moving
% cars in the video
% Copyright 2018 The MathWorks, Inc.
%% Read the video into MATLAB
%vidReader = VideoReader('visiontraffic.avi');
%opticFlow = opticalFlowFarneback;
%% Estimate Optical Flow of each frame
% for i=1:90 %hasFrame(vidReader)
% frameRGB = readFrame(vidReader);
% frameGray = rgb2gray(frameRGB);
% flow = estimateFlow(opticFlow,frameGray);
% imshow(frameRGB)
% hold on
% % Plot the flow vectors
% plot(flow,'DecimationFactor',[25 25],'ScaleFactor', 2)
% % Find the handle to the quiver object
% q = findobj(gca,'type','Quiver');
% % Change the color of the arrows to red
% q.Color = 'b';
% drawnow
% hold off
% end
