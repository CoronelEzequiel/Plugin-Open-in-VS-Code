@echo off
:: Instalar "Abrir con VS Code" en el menú contextual de Windows

reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithVSCode" /ve /t REG_SZ /d "Abrir con VS Code" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithVSCode" /v "Icon" /t REG_SZ /d "C:\\Users\\%USERNAME%\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithVSCode\command" /ve /t REG_SZ /d "\"C:\\Users\\%USERNAME%\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe\" \"%%V\"" /f

reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithVSCode" /ve /t REG_SZ /d "Abrir con VS Code" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\OpenWithVSCode\command" /ve /t REG_SZ /d "\"C:\\Users\\%USERNAME%\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe\" \"%%1\"" /f

echo Instalacion completa. Ahora puedes hacer clic derecho en cualquier carpeta y veras "Abrir con VS Code".
pause
