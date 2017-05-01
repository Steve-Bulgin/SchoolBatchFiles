@echo off

for /f %%D in ('wmic volume get DriveLetter^, Label ^| find "S_BULGIN"') do set drive=%%D

subl --background %drive%\\Sublime\\Data\\Packages\\User\\MarkdownPreview.sublime-settings:8:1

subl --command "move_to {\"extend\": true, \"to\": \"eol\"}"
subl --command "right_delete"
subl --command "insert {\"characters\": \"	\\"\"browser\\"\": \\"\"%drive%\\\\Chrome\\\\GoogleChromePortable.exe\\"\"\"}"
subl --command save
subl --command close

PAUSE