@echo off
cd /d "%~dp0"
echo Starting Jekyll server...
echo Site will be available at http://127.0.0.1:4000/
echo Press Ctrl+C to stop.
echo.
bundle exec jekyll serve --config _config_local.yml
pause
