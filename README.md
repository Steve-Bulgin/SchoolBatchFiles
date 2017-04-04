## Conestoga Batch Files

These are a couple of batch files I made to carry on my usb stick to help me get through my days at Conestoga.

pathsetter.bat sets the path variable to various programs I'll use or am apt to use. It starts by figuring out what drive letter the usb stick is in and appends that to the paths of the program. Some computer labs have excessively long path variables so it just completely overwrites them. It grabs the computer name (and thereby the lab I'm in) and handles things as needed. It then checks if Android sdk is present on the system and adds it to the path. It then copies startup.bat over to the startup folder and logs off.

On relogging startup.bat fires and starts git bash, sublime, ditto, and a couple cmd windows.