# Compile the code 
javac -d classes -classpath ../module2/second.jar $(find src -name '*.java')  

# Create jar file
jar -c -f first.jar -C classes .
