@echo off

set sikulix_jar=C:\SikuliX\sikulixapi.jar

set CLASSPATH=%sikulix_jar%
set JYTHONPATH=%sikulix_jar%/Lib

jybot --outputdir=TestResults2 ^
      --loglevel=TRACE ^
      %*