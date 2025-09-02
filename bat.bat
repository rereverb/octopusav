@echo off
REM ==============================
REM Script automático de Git para Windows con pull/rebase
REM ==============================

REM Ir a la carpeta del proyecto
cd /d "C:\Users\rerev\octopusav"

REM Pedir mensaje de commit
set /p msg=Escribe el mensaje del commit: 

REM Añadir todos los cambios
git add .

REM Solo hacer commit si hay cambios
git diff-index --quiet HEAD || git commit -m "%msg%"

REM Traer cambios remotos y rebase para evitar conflictos
git pull origin main --rebase

REM Hacer push al repositorio remoto
git push origin main

pause
