
## Windows 11 Update TPM Fixer

The Windows 11 Update TPM Fixer is a batch script designed to fix the TPM issue that commonly occurs during the Windows 11 update process. This error message, which appears in many Windows 11 Insider versions, states that "This PC can't run Windows 11" due to the TPM being either unsupported or not configured properly. This script bypasses the TPM, Secure Boot, RAM, and CPU checks during Windows setup and grants full permissions to the appraiserres.dll file, which is required for the update process.

### Problem Description

When updating to Windows 11, some users may encounter an error message that says "This PC can't run Windows 11" due to the TPM (Trusted Platform Module) being either unsupported or not configured properly. This issue can be frustrating for users who want to update to the latest version of Windows.

### How It Works

When you run the Windows 11 Update TPM Fixer script, it first checks whether you have administrative privileges on your computer. If you don't, the script will prompt you to run it as an administrator.

After confirming that you want to proceed with the fix, the script disables the TPM, Secure Boot, RAM, and CPU checks during Windows setup by modifying the relevant registry keys. This allows the Windows 11 update to proceed even if these checks fail.

Next, the script takes ownership of the appraiserres.dll file, which is required for the update process, and grants full permissions to the file for the "Users" group. This ensures that the file can be modified and updated during the Windows 11 update process.

Finally, the script removes the "readonly", "system", and "hidden" attributes from the appraiserres.dll file to allow it to be modified and updated during the Windows 11 update process.

![Windows 11 Update TPM Fixer](https://i.imgur.com/t3EcLUw.png)

### Usage

To use the Windows 11 Update TPM Fixer, follow these steps:

1. Download the "W11UP_TPM_FIX.zip" file and extract it.
2. Right-click on the "W11UP_TPM_FIX.bat" file and choose "Run as administrator".
3. When prompted, confirm that you want to proceed with the fix.
4. Wait for the script to run and complete.

### Note

- This script must be run as an administrator.
- Using this script is at your own risk. We are not responsible for any damage or loss caused by this script.

### Thank You

The Windows 11 Update TPM Fixer script is based on the solution provided by Microsoft in technology community forums.

Don't forget to hit the follow button on our Instagram account @celalizolu to stay up-to-date with the latest tools and updates. We are always here to help and respond to any of your questions or feedback. Don't hesitate to reach out!
