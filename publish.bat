@echo off
setlocal
cd /d "%~dp0"
echo ==========================================
echo INSURE AI - Publish Windows x64
echo ==========================================
dotnet restore
if errorlevel 1 goto :error
dotnet publish InsureAI.csproj -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true
if errorlevel 1 goto :error
echo.
echo Da publish xong.
echo Thu muc: bin\Release\net8.0\win-x64\publish\
pause
exit /b 0
:error
echo.
echo Publish that bai. Hay kiem tra .NET 8 SDK.
pause
exit /b 1
