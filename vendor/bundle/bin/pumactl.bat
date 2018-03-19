@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Ruby233-x64\bin\ruby.exe" "C:/Users/mitchell.hollander/Documents/Software Development/my.code-projects/filmz/vendor/bundle/bin/pumactl" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Ruby233-x64\bin\ruby.exe" "%~dpn0" %*
