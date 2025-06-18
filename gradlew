#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS.
# DEFAULT_JVM_OPTS=""

APP_HOME=$(dirname $(realpath "$0"))

# Add default Gradle options here. You can also use GRADLE_OPTS.
# DEFAULT_GRADLE_OPTS=""

# Add default JVM options for Gradle here. You can also use JAVA_OPTS and GRADLE_OPTS.
# DEFAULT_JVM_OPTS=""

# Determine Java command to use
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses "$JAVA_HOME/jre/sh/java" as the actual executable
        JAVA_CMD="$JAVA_HOME/jre/sh/java"
    else
        JAVA_CMD="$JAVA_HOME/bin/java"
    fi
else
    JAVA_CMD="java"
fi

# Determine Gradle distribution.
# Note: this is for local distribution only, not for downloaded distributions.
GRADLE_HOME="$APP_HOME/gradle/wrapper" # Assuming wrapper lives in app_home/gradle/wrapper
WRAPPER_JAR="$GRADLE_HOME/gradle-wrapper.jar"
WRAPPER_PROPERTIES="$GRADLE_HOME/gradle-wrapper.properties"

# Set up classpath for the wrapper
CLASSPATH="$WRAPPER_JAR"

# Add some common options that can be overridden later
DEFAULT_JVM_OPTS="-Xmx1024m -Dfile.encoding=UTF-8"

# Main class of the wrapper
MAIN_CLASS="org.gradle.wrapper.GradleWrapperMain"

# Execute Gradle
exec "$JAVA_CMD" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS -classpath "$CLASSPATH" "$MAIN_CLASS" "$@"
