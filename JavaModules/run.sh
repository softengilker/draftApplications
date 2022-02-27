# Execute First with classpath
echo "Running First in classpath"
java -classpath module1/first.jar:module2/second.jar com.ilkerkonar.first.First

# Execute the First with modulepath
echo "Running First in modulepath"
java -p module1/first.jar:module2/second.jar -m first/com.ilkerkonar.first.First

# Execute the Third with modulepath
echo "Running Third in modulepath"
java -p module3/third.jar:module2/second.jar:module1/first.jar -m third/com.ilkerkonar.third.Third
