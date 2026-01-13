clear all
format long
R=VideoReader ('visiontraffic.avi'); %creates object v to read video data from the file named filename
X_Data=Matrix_video(R,171,200);%Put the 30 frames in a matrix
[n,m]=size(X_Data);
X = double(X_Data);



