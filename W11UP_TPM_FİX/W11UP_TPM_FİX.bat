@echo off
color 0a
setlocal EnableExtensions
set "SCRIPT_NAME=%~nx0"
set "SCRIPT_PATH=%~dp0"

echo Please confirm that you want to run this script to fix the Windows 11 update TPM issue.
echo This script will disable TPM, Secure Boot, RAM and CPU checks during Windows setup, take ownership of a file, grant "Users" full permissions to the file, remove attributes from the file, delete the file, copy a new file, make the new file read-only, system, and hidden, and create an inbound rule to block the new file.
echo Proceeding with this script may have unintended consequences and could potentially harm your computer. Only run this script if you understand the risks and are confident in your ability to fix the issue.

set /p "confirmation=Do you want to continue? (y/n)"

if /i "%confirmation%" neq "y" goto end

echo Fixing Windows 11 update TPM issue...

:: Disable TPM, Secure Boot, RAM and CPU checks during Windows setup
echo Disabling TPM, Secure Boot, RAM and CPU checks during Windows setup...
reg add "HKLM\SYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /t REG_DWORD /d "1" /f >nul
reg add "HKLM\SYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /t REG_DWORD /d "1" /f >nul
reg add "HKLM\SYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /t REG_DWORD /d "1" /f >nul
reg add "HKLM\SYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /t REG_DWORD /d "1" /f >nul
reg add "HKLM\SYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /t REG_DWORD /d "1" /f >nul
echo Done.

:: Take ownership of the file
echo Taking ownership of appraiserres.dll...
takeown /f "C:\$WINDOWS.~BT\Sources\appraiserres.dll" >nul 2>&1 || echo Failed to take ownership of appraiserres.dll.
echo Done.

:: Grant "Users" full permissions to the file
echo Granting "Users" full permissions to appraiserres.dll...
icacls "C:\$WINDOWS.~BT\Sources\appraiserres.dll" /grant Users:(F) >nul 2>&1 || echo Failed to grant permissions to appraiserres.dll.
echo Done.

:: Remove "readonly", "system", and "hidden" attributes from the file
echo Removing attributes from appraiserres.dll...
attrib -r -s -h "C:\$WINDOWS.~BT\Sources\appraiserres.dll" >nul 2>&1 || echo Failed to remove attributes from appraiserres.dll.
echo Done.

:: Delete the file
echo Deleting appraiserres.dll...
del /f /q "C:\$WINDOWS.~BT\Sources\appraiserres.dll" >nul 2>&1 || echo Failed to delete appraiserres.dll.
echo Done.

:: Copy "appraiserres.dll" to the $WINDOWS.~BT\Sources folder
echo Copying appraiserres.dll to $WINDOWS.~BT\Sources folder...
copy /y "%SCRIPT_PATH%appraiserres.dll" "C:\$WINDOWS.~BT\Sources\" >nul 2>&1 || echo Failed to copy appraiserres.dll.
echo Done.

:: Make "appraiserres.dll" read-only, system, and hidden
echo Making appraiserres.dll read-only, system, and hidden...
attrib +r +h +s "C:\$WINDOWS.~BT\Sources\appraiserres.dll" >nul 2>&1 || echo Failed to set attributes for appraiserres.dll.
echo Done.

:: Create inbound rule to block the file
echo Creating inbound rule to block appraiserres.dll...
set "RULE_NAME=Block appraiserres.dll"
set "PROGRAM_PATH=C:\$WINDOWS.~BT\Sources\appraiserres.dll"
netsh advfirewall firewall add rule name="%RULE_NAME%" dir=in action=block program="%PROGRAM_PATH%" enable=yes >nul 2>&1 || echo Failed to create inbound rule for appraiserres.dll.
echo Done.

:: Display completion message
echo Windows 11 update TPM issue has been fixed. You can now update Windows 11 without any issues.
echo Follow me on Instagram: @celalizolu
pause >nul

:end
pause >nul