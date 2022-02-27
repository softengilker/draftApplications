# Compile the code 
javac -d classes -p ../module1/first.jar:../module2/second.jar $(find src -name '*.java')

# Create jar file
jar -c -f third.jar -C classes .

# Remove the classes folder
rm -r classes
