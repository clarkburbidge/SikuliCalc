# SikuliCalc
This is the code and explanation on how I was able to somewhat successfully implement Sikuli testing the Windows Calculator with Robot Framework as described on [Mike's cognition - How-To: Sikuli and Robot Framework Integration](http://blog.mykhailo.com/2011/02/how-to-sikuli-and-robot-framework.html). Also [Tset-Noitamotua's Github repository](https://github.com/Tset-Noitamotua/Sikuli-and-Robot-Framework-Integration/tree/Windows-8.1) was very helpful and the source for much of the other code.
##My Setup
###Software
VirtualBox 4.3.28 r100309, Modern IE Windows 8.1, SikuliX 1.1.0, Robot Framework 2.8.7, Python 2.7.10 win32, Robot Framework 2.9.dev201550605, Jython 2.7.0, java1.8.0_45
###Folder Structure
    C:\SikuliX
    C:\SikuliX\sikulixapi.jar
    C:\RobotFramework\SikuliCalc (The container for this repository)
    C:\RobotFramework\SikuliCalc\SikuliCalc.sikuli
    ...
###Added to PATH
C:\Python27\;C:\Python27\Scripts;C:\jython2.7.0;C:\jython2.7.0\bin\
I think the Java install automatically added the correct path for itself.
###New Environment Variable
SIKULI_HOME = C:\SikuliX\
##Installing and Check
###Install Java 32 Bit

jre-8u45-windows-i586.exe [download from Oracle](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html).

### Check java

    c:\>java -d32 -version
    java version "1.8.0_45"
    Java(TM) SE Runtime Environment (build 1.8.0_45-b15)

###Install Python 2.7 32 Bit

python-2.7.10.msi [downloaded from python.org](https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi), but the latest python 2.7.X x86 should work.

###Check Python install

    c:\>python
    Python 2.7.10 (default, May 23 2015, 09:40:32) [MSC v.1500 32 bit (Intel)] on win32

###Install Jython

jython-installer-2.7.0.jar [downloaded from jython.org](http://search.maven.org/remotecontent?filepath=org/python/jython-installer/2.7.0/jython-installer-2.7.0.jar). [Installation instructions from jython.org](https://wiki.python.org/jython/InstallationInstructions).

    c:\>java -jar jython_installer-2.7.0.jar

###Check Jython installation & Java usage

    c:\>jython
    Jython 2.7.0 (default:9987c746f838, Apr 29 2015, 02:25:11)
    [Java HotSpot(TM) Client VM (Oracle Corporation)] on java1.8.0_45

###Install Robot Framework with pip

    c:\>pip install robotframework 

###Check Robot Framework

    c:\>pybot --version
    Robot Framework 2.8.7 (Python 2.7.10 on win32)

###Install from source via Jython

[Robot Framework Docs](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst#jython-installation)

###Check Jython version of Robot Framework

    c:\>jybot --version
    Robot Framework 2.9.dev20150605 (Jython 2.7.0 on java1.8.0_45)
    
#To Do
1. Figure out how to report FAIL on the 2+2=5 test.
2. Move this example to a Remote Server so that the primary library can be AutoIt.