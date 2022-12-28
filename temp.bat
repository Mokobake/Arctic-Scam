@shift /0
@echo off
echo del "C:\Users\%username%\AppData\Local\Temp.*"
@del "C:\Users\%username%\AppData\Local\Temp.*"
ping /n 1 localhost >NUL
echo mkdir C:\Windows\temp
@mkdir C:\Windows\temp
ping /n 1 localhost >NUL
echo mkdir "C:\Users\%username%\AppData\Local\Temp"
@mkdir "C:\Users\%username%\AppData\Local\Temp"
ping /n 1 localhost >NUL
ping /n 2 localhost >NUL