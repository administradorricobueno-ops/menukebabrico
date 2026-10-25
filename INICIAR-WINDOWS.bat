@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
 echo No se encuentra Node.js. Instala la version LTS desde https://nodejs.org/ y vuelve a ejecutar este archivo.
 pause
 exit /b 1
)
start "KebabRico" http://127.0.0.1:4173/
start "Editor de fotos KebabRico" http://127.0.0.1:4173/editar-fotos.html
node servidor-local.js
pause
