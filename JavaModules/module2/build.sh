# Compile the code 
javac -d classes $(find src -name '*.java')  

# Create jar file
jar -c -f second.jar -C classes .
