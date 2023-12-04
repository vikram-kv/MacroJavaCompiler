#!/bin/bash
    COUNT=0
    PASS=0
    rm atests/out/*
    rm atests/exp/*
    rm atests/miniRA/*
    find . -type f -name "*.class" -delete
    javac A4.java
    cd atests/MiniRAparser/
    javac Main.java
    cd ../..
    for f in atests/microIR/*
    do
        java A4 < "atests/microIR/$(basename "$f")" > "atests/miniRA/$(basename "$f").RA"
        cd atests/MiniRAparser/
        java Main < "../miniRA/$(basename "$f").RA"
        cd ..
        cd ..
        java -jar atests/interpreters/kgi.jar < "atests/miniRA/$(basename "$f").RA" > "atests/out/$(basename "$f").out"
        java -jar atests/interpreters/pgi.jar < "atests/microIR/$(basename "$f")" > "atests/exp/$(basename "$f").out"
        if ! diff -q "atests/out/$(basename "$f").out" "atests/exp/$(basename "$f").out" >> /tmp/out.txt  
        then 
            echo "Match Failure - "$f""
        else 
            echo "Match Success - "$f""
            PASS=$(( PASS+1 ))
        fi
        COUNT=$(( COUNT+1 ))
    done
    echo "Total ${PASS}/${COUNT} cases passed"
    find . -type f -name "*.class" -delete