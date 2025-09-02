@echo off
cd /d "C:\Users\rerev\octopusav"
set /p msg=Escribe el mensaje del commit: 
git add .
git commit -m "%msg%"
git push origin main
pause
