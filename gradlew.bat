@rem
@rem Copyright 2012 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle start up script for Windows
@rem
@rem ##########################################################################

@rem Set default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS.
@set DEFAULT_JVM_OPTS=

@rem Set default Gradle options here. You can also use GRADLE_OPTS.
@set DEFAULT_GRADLE_OPTS=

@rem Set default JVM options for Gradle here. You can also use JAVA_OPTS and GRADLE_OPTS.
@set DEFAULT_JVM_OPTS=

@rem Find Java
if defined JAVA_HOME goto findJavaInJdk
for %%i in (java.exe) do @if "%%~$PATH:i" neq "" set JAVA_HOME=%%~dpi
goto checkJavaHome

:findJavaInJdk
if exist "%JAVA_HOME%\bin\java.exe" goto checkJavaHome
if exist "%JAVA_HOME%\jre\bin\java.exe" set JAVA_HOME=%JAVA_HOME%\jre
goto checkJavaHome

:checkJavaHome
if not defined JAVA_HOME goto noJavaHome
if not exist "%JAVA_HOME%\bin\java.exe" goto noJavaHome

@rem Setup Gradle
@set APP_HOME=%~dp0

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS.
@set DEFAULT_JVM_OPTS=

@rem Add default Gradle options here. You can also use GRADLE_OPTS.
@set DEFAULT_GRADLE_OPTS=

@rem Add default JVM options for Gradle here. You can also use JAVA_OPTS and GRADLE_OPTS.
@set DEFAULT_JVM_OPTS=

@rem Main class of the wrapper
@set MAIN_CLASS=org.gradle.wrapper.GradleWrapperMain

@rem Execute Gradle
"%JAVA_HOME%\bin\java" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -classpath "%APP_HOME%gradle\wrapper\gradle-wrapper.jar" %MAIN_CLASS% %*
goto end

:noJavaHome
echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
echo.

:end
