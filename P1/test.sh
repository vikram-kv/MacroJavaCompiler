#Store all .java files in macro/
rm mini/*
for javafile in $(ls macro/)
do
    touch mini/$javafile
    echo $javafile
    ./$1 < macro/$javafile > mini/$javafile
    javac mini/$javafile
    echo 
done

rm rmini/*
for javafile in $(ls tests/)
do
    cp tests/$javafile rmini/$javafile
    echo $javafile
    javac rmini/$javafile 
    echo 
done

cat names.txt | while read filename
do
    echo $filename
    cd mini
    java $filename > ../outputs/out1.txt
    cd ..
    cd rmini
    java $filename > ../outputs/out2.txt
    cd ..
    diff outputs/out1.txt outputs/out2.txt
    echo "finished"
done
