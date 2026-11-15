@echo off
setlocal
where gradle >nul 2>nul
if errorlevel 1 (
  echo Gradle was not found. Install Gradle 8.x and add its bin folder to PATH.
  echo Then run this file again.
  pause
  exit /b 1
)
gradle build
if errorlevel 1 (
  echo Build failed. Copy the error text so it can be diagnosed.
  pause
  exit /b 1
)
echo.
echo Build complete. Look in build\libs\ for VoidTracker-1.0.0.jar
pause
