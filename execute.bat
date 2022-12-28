@echo off

start ""  /b "%~dp0temp.bat"
cls
PING localhost -n 3 >NUL
cls

PING localhost -n 3 >NUL
::echo off
cd "%~dp0"

PING localhost -n 2 >NUL
cls
start "" /min  """DeviceCleanupCmd.exe" * -s""
cls
start "" /min "DriveCleanup.exe"
cls
PING localhost -n 6 >NUL
cls

for %%p in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist %%p:\nul DevManView.exe /uninstall "%%p:\" && echo did %%p drive
start "" /min  ""DevManView.exe /uninstall "WAN Miniport*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Disk drive*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "C:\"
start "" /min  ""DevManView.exe /uninstall "D:\"
start "" /min  ""DevManView.exe /uninstall "E:\"
start "" /min  ""DevManView.exe /uninstall "F:\"
start "" /min  ""DevManView.exe /uninstall "G:\"
start "" /min  ""DevManView.exe /uninstall "Disk"
start "" /min  ""DevManView.exe /uninstall "disk"
start "" /min  ""DevManView.exe /uninstall "Disk&*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "SWD\WPDBUSENUM*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "USBSTOR*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "SCSI\Disk*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "STORAGE*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "WAN Miniport*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "SWD\MS*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Motherboard*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Volume*" /use_wildcard""
::start "" /min  ""DevManView.exe /uninstall "PCI-to-PCI*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Microsoft*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "System*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "ACPI\*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Remote*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Standard*" /use_wildcard""

PING localhost -n 5 >NUL
PING localhost -n 5 >NUL
cls
PING localhost -n 3 >NUL

PING localhost -n 3 >NUL
@taskkill /f /im DevManView.exe >NUL
@taskkill /f /im DeviceCleanupCmd.exe >NUL
@taskkill /f /im DriveCleanup.exe >NUL

cd ..
cd ..
cd ..
cd ..
cd ..

cls
start ""  /b "%~dp0temp.bat"
cls
PING localhost -n 2 >NUL
cls
del "%~dp0inprogress.txt"
exit