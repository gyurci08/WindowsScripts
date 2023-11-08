setx path "%PATH%;C:\Program Files\Git\usr\bin" /M

reg add "HKCU\Software\Microsoft\Command Processor" /v Autorun /d "doskey /macrofile=\"%~dp0LinuxAliasesMacro.doskey\"" /f

timeout 3