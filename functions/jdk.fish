function jdk --description 'Set alternative JDK version' --argument-names ver
    echo "Set JDK to version $ver"
    set -x JAVA_HOME (/usr/libexec/java_home -v $ver)
    java -version
end
