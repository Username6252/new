@echo off
color 0f
echo.
echo net localgroup
echo.
echo net localgroup Administrators nano /add
echo.
echo copy c:\windows\system32/sethc.exe c:\
echo copy /y c:\Windows\system32\cmd.exe c:\windows\system32\sethc.exe
echo.
echo copy /y c:\sethc.exe c:\windows\system32\cmd.exe 
echo.
echo c:
echo cd windows/system32
echo ren Utilman.exe Utilman.exe.old
echo copy cmd.exe Utilman.exe
echo.
echo for /l %%a in (1,2,10) do 
echo.
echo lis vol
echo sel vol 3
echo assign letter=d
echo.
echo remove all dismount diskpart
echo.
echo wmic logicaldisk get deviceid, volumename, description
echo.
echo icacls FileName /grant :r nano:f 
echo.
echo sfc /scannow
echo | findstr dns
echo ipconfig /displaydns
echo ipconfig /flushdns
echo nslookup something.com -type something
echo taskkill /f /t /pid 201894
echo tasklist /svc /apps /v | findstr script
echo getmac /v
echo powercfg /batteryreport
echo assoc .mp4=program.v
echo chkdsk /f /r
echo dism /online /cleanup /restorehealth
echo DISM /online /cleanup /checkhealth
echo DISM /online /cleanup /scanhealth
echo DISM.exe /Online /Cleanup-image /Restorehealth
echo netsh wlan show wlanreport
echo netsh interface show interface
echo netsh interface ip show address | findstr "ip address"
echo netsh interface ip show dnsservers
echo netsh advfirewall set allprofiles state off
echo ping -t 
echo tracert website
echo netstat -af -o -e -t 5
echo route print 
echo route add delete
echo shutdown /r /fw /f /t 0
echo 
echo.

echo :: or REM 
pause