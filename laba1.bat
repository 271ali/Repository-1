set arg1=%1
if not exist %arg1% (
echo not exists
exit
)
set /a sum=0
for /r "%arg1%" %%i in (*.*) do (set /a sum+=1)
set /A result=%sum%%%2
if %result% == 0 (
dir /b /o:-D %arg1% > result.txt
) else (
dir /b /o:S %arg1% > result.txt
)

