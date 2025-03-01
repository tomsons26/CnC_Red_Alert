SET ROOT=%cd%

REM Compilers and utilities
SET WATCOM=D:\WATCOM
SET TASM=D:\Projects\TASM
SET UTILS=D:\Projects\utils\utils
SET MASM=D:\MASM_6_11D

REM Define Westwood libraries

REM 3rd party libraries

SET PATH=%WATCOM%\BINNT;%PATH%
SET PATH=%TASM%\BIN;%PATH%

md OBJ\WIN32\ENGLISH
md OBJ\WIN32\FRENCH
md OBJ\WIN32\GERMAN
md RUN\ENGLISH
md RUN\FRENCH
md RUN\GERMAN

::copy /Y %IPX%\IPXREAL.IBN .\OBJ\WIN32\

cd code

WMAKE WIN32=1
::WMAKE WIN32=1 /a

:: manual linking to avoid a link path corruption issue
::%UTILS%\nwlink name ra95.exe @win95.lnk

pause