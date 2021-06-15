function jdk --description 'Set alternative JDK version' --argument-names ver
    echo "Set JDK to version $ver"
	set java_version $argv
	set -Ux JAVA_HOME (/usr/libexec/java_home -v $java_version)
    java -version
end
