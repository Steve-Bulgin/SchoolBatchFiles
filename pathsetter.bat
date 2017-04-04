@echo off

for /f %%D in ('wmic volume get DriveLetter^, Label ^| find "S_BULGIN"') do set drive=%%D

set list=2A409 2A411 2A308 

for %%I in (%list%) do (
	IF %%I == %ComputerName:~0,5% (
		GOTO list_lab
	)
)

GOTO not_list_lab

:list_lab

	setx /M Path "C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\Sage\Sage 300 ERP\RUNTIME;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\MATLAB\R2015a\bin;C:\Program Files\nodejs\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;C:\Program Files (x86)\GtkSharp\2.12\bin;C:\Program Files (x86)\MySQL\MySQL Utilities\;C:\Android\sdk\tools;C:\Android\sdk\platform-tools;%drive%\Sublime;%drive%\Cloc;%drive%\Start\"

	xcopy "%drive%\Start\startup.bat" "C:\Users\sbulgin-cc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"  /E /C /I /Q /G /H /R /K /Y /Z /J

	LOGOFF
goto:eof

:not_list_lab

	IF EXIST C:\Android\sdk\tools (
		setx /M Path "%Path%;C:\Android\sdk\tools;C:\Android\sdk\platform-tools;%drive%\Sublime;%drive%\Cloc;%drive%\Start\"
	) ELSE (
		setx /M Path "%Path%;%drive%\Sublime;%drive%\Cloc;%drive%\Start\"
	)

	xcopy "%drive%\Start\startup.bat" "C:\Users\sbulgin-cc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"  /E /C /I /Q /G /H /R /K /Y /Z /J

	LOGOFF
goto:eof
