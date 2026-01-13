# ADMM for Video Surveillance

This repository contains MATLAB scripts implementing the ADMM algorithm for robust PCA applied to video surveillance.

## Files
- `Matrix_video.m` — Converts video frames into a matrix
- `ADMM.m` — Implementation of the ADMM algorithm
- `main_application.m` — Example script demonstrating the method
- `visiontraffic.avi` — Sample video data (if possible)

## Requirements
- MATLAB R20XX or higher
- Image Processing Toolbox (optional, if needed for `imshow`)

## Usage
1. Open `main_application.m` in MATLAB
2. Run the script
3. The code outputs:
   - Background/foreground separation of video frames
   - Residual plots

