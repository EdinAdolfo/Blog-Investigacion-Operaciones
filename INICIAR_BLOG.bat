@echo off
cd /d "%~dp0"
echo Iniciando servidor local para los videos de YouTube...
start "" "http://localhost:5500/index.html"
py -m http.server 5500
if errorlevel 1 (
  echo No se pudo iniciar Python. Usa Live Server desde Visual Studio Code.
  pause
)
