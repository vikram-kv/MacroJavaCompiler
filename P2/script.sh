javac A2.java
for f in $(ls MiniJava/)
do
echo $f
java A2 < MiniJava/$f
done