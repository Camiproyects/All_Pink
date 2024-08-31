@echo off
:: Define tu mensaje de commit o usa uno predeterminado
set commit_message="Actualización automática: %date% %time%"

:: Agrega todos los cambios
git add .

:: Confirma los cambios
git commit -m %commit_message%

:: Sube los cambios al repositorio remoto
git push origin master

:: Opción para un branch específico
:: git push origin tu_rama

echo Actualización subida exitosamente.
pause
