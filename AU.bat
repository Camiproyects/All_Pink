@echo off
:: Define tu mensaje de commit o usa uno predeterminado
set commit_message="Actualización automática: %date% %time%"

:: Agrega todos los cambios
git add .

:: Confirma los cambios
git commit -m %commit_message%

:: Realiza un pull para integrar cambios remotos
git pull origin master

:: Sube los cambios al repositorio remoto
git push origin master

echo Actualización subida exitosamente.
pause
