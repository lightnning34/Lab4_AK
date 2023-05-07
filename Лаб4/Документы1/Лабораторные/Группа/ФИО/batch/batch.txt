@echo off
mkdir "Invisible folder"
attrib +h "Invisible folder"
mkdir "Visible folder"
xcopy /? > "Visible folder\copyhelp.txt"
xcopy "Visible folder\copyhelp.txt" "Invisible folder\copied_copyhelp.txt"
echo Done.
pause