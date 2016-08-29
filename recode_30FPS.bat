@echo off
REM Re-encode script for Shadow Play videos - 30FPS version
REM The script re-encodes all the MP4 videos in the current
REM directory and put the new video into the directory EDIT

REM If the dir EDIT does not exist, create it.
if not exist EDIT mkdir EDIT

REM For each MP4 video in current dir do:
REM  Encode video with settings:
REM   -i "%%i" - Input video from the for cycle
REM   -hide_banner - Suppress printing the banner
REM   -vsync 1 - Use constant frame rate
REM   -crf 19 - Constant rate factor of 19, better video for edit
REM   -r 30 - Framerate set to 30 frames per second, change to 60 for 60FPS
REM   -c:v libx264 - Use libx264 for video encoding
REM   -preset ultrafast - Use libx264 ultra fast encoding preset
REM   -c:a copy - Copy the audio from source to destination without change
REM   "EDIT\%%~ni.mp4" - Output finished video to the EDIT dir
for %%i in ("*.mp4") do (
    ffmpeg -i "%%i" -hide_banner -vsync 1 -crf 19 -r 30 -c:v libx264 -preset ultrafast -c:a copy "EDIT\%%~ni.mp4"
)
REM END
