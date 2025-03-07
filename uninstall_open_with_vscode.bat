@echo off
:: Desinstalar "Abrir con VS Code" del menú contextual de Windows

reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWithVSCode" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\OpenWithVSCode" /f

echo Desinstalacion completa. "Abrir con VS Code" ha sido eliminado del menu contextual.
pause
