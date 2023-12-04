#!/bin/bash
    COUNT=0
    PASS=0
    rm tests/out/*
    rm tests/exp/*
    rm tests/miniRA/*
    find . -type f -name "*.class" -delete
    javac A4.java
    cd tests/MiniRAparser/
    javac Main.java
    cd ../..
    for f in tests/microIR/*
    do
        java A4 < "tests/microIR/$(basename "$f")" > "tests/miniRA/$(basename "$f").RA"
        cd tests/MiniRAparser/
        java Main < "../miniRA/$(basename "$f").RA"
        cd ..
        cd ..
        java -jar tests/interpreters/kgi.jar < "tests/miniRA/$(basename "$f").RA" > "tests/out/$(basename "$f").out"
        java -jar tests/interpreters/pgi.jar < "tests/microIR/$(basename "$f")" > "tests/exp/$(basename "$f").out"
        if ! diff -q "tests/out/$(basename "$f").out" "tests/exp/$(basename "$f").out" >> /tmp/out.txt  
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