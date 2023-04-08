## Windows 11 Update TPM Fixer

![Windows 11 Update TPM Fixer](https://i.imgur.com/t4p4Gi4.png)

This script fixes the TPM issue that appears during Windows 11 update, which is commonly encountered in Windows 11 Insider versions. When updating to Windows 11, some users may encounter an error message that says "This PC can't run Windows 11" due to the TPM (Trusted Platform Module) being either unsupported or not configured properly. This script bypasses the TPM, Secure Boot, RAM, and CPU checks during Windows setup and grants full permissions to the appraiserres.dll file, which is required for the update process.

### How to use
1. Download the `Win11_TPM_Fix.bat` file.
2. Right-click on the file and choose "Run as administrator".
3. When prompted, confirm that you want to proceed with the fix.
4. Wait for the script to run and complete.

### Note
- This script must be run as an administrator.
- Use this script at your own risk. We are not responsible for any damage or loss caused by this script.

### Detailed explanation of the script
![Script Explanation](https://i.imgur.com/4sJZTlT.png)

When you run the script, it first checks whether you have administrative privileges on your computer. If you don't, the script will prompt you to run it as an administrator.

After confirming that you want to proceed with the fix, the script disables the TPM, Secure Boot, RAM, and CPU checks during Windows setup by setting relevant registry keys. This allows the Windows 11 update to proceed even if these checks fail.

Next, the script takes ownership of the appraiserres.dll file, which is required for the update process, and grants full permissions to the file for the "Users" group. This ensures that the file can be modified and updated during the Windows 11 update process.

Finally, the script removes "readonly", "system", and "hidden" attributes from the appraiserres.dll file to allow it to be modified and updated during the Windows 11 update process.

### Disclaimer
![Disclaimer](https://i.imgur.com/3cT9TqT.png)

This script is provided "as is" without warranty of any kind, either express or implied, including but not limited to the implied warranties of merchantability and/or fitness for a particular purpose. The author shall not be liable for any damages whatsoever arising out of or in connection with the use or inability to use this script, even if the author has been advised of the possibility of such damages.

### Acknowledgments
![Acknowledgments](https://i.imgur.com/3q1hSjg.png)

- This script is based on the solution provided by Microsoft in their tech community forum.
- The progress bar in this script was inspired by the script provided by user "dbenham" on Stack Overflow.

Feel free to customize the description as needed and include any additional information from the script that you think would be helpful for users.
