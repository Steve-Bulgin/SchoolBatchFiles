:: FileName: startup.bat
:: Purpose: Start various software for me
:: Revision History
::	 	Steven Bulgin, 2015.11.12: Comments: Created
::      Steven Bulgin, 2015.11.12: Added start up programs
::      Steven Bulgin, 2017.03.07: Added multi start etc for Android dev at school

@echo off

COLOR 0A

for /f %%D in ('wmic volume get DriveLetter^, Label ^| find "S_BULGIN"') do set drive=%%D

set /P choice="Do you want to start Smart Switch?[Y/N] "
if /I "%choice%" EQU "Y" START %drive%\"Spring 2017"\"Android on Device"\Smart_Switch_pc_setup.exe

START /MIN %drive%\Git\PortableGit\git-bash.exe
START %drive%\Ditto\DittoPortable\DittoPortable.exe
START /MIN %drive%\Sublime\sublime_text.exe

:: && crash out on error (if unhandled) & will proceed with all tasks
START /MAX cmd.exe /k "cd /d ""C:\"" & CLS && COLOR 0A && mode con: cols=260 lines=2500"
START /MAX cmd.exe /k "cd /d ""C:\"" && CLS && COLOR 0A && mode con: cols=260 lines=2500"

EXIT
