# Recode

**Fast batch script for converting videos from variable frame rate to fixed frame rate.    
Works well with ShadowPlay recordings.**

These are a set of very small bat scripts to automate the process of converting variable frame
rate videos, like ShadowPlay recordings, into fixed frame rate videos, ready for import into
the editing software.

Requires ffmpeg.exe to work, to get it for windows go to Zeranoe FFmpeg (https://ffmpeg.zeranoe.com/builds/) 
and choose the latest static build for your architecture.
If necessary, please rename the executable ffmpeg.exe.

Put the script and ffmpeg.exe in the same directory as your raw MP4 video files.
The script creates a dir called "EDIT" to put the output video files.

Current settings for encoding are:   
* hide_banner - Suppress printing the banner   
* vsync 1 - Use constant frame rate   
* crf 19 - Constant rate factor of 19, better video for edit   
* r 30 - Framerate set to 30 frames per second, change to 60 for 60FPS   
* c:v libx264 - Use libx264 for video encoding    
* preset ultrafast - Use libx264 ultra fast encoding preset   
* c:a copy - Copy the audio from source to destination without change   

Links:
* FFmpeg - https://ffmpeg.org/
* ffmpeg tool documentation - https://ffmpeg.org/ffmpeg.html
* Zeranoe FFmpeg - https://ffmpeg.zeranoe.com/builds/
