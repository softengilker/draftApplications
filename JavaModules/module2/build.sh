# Compile the code 
javac -d classes -p ../module1/first.jar $(find src -name '*.java')  

# Create jar file
jar -c -f second.jar -C classes .

# Remove the classes folder
rm -r classes
