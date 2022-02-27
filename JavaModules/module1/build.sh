# Compile the code 
javac -d classes -p ../module2/second.jar $(find src -name '*.java')  

# Create jar file
jar -c -f first.jar -C classes .

# Remove the classes folder
rm -r classes
