#!/bin/bash
    COUNT=0
    PASS=0
    rm tests/out/*
    rm tests/exp/*
    rm tests/MIPS/*.s
    find . -type f -name "*.class" -delete
    javac A5.java
    for f in tests/miniRA/*
    do
        java A5 < "tests/miniRA/$(basename "$f")" > "tests/MIPS/$(basename "$f").s"
        cd tests/MIPS/
        java -jar mars.jar nc sm $(basename "$f").s > "../out/$(basename "$f").out"
        cd ../..
        java -jar tests/interpreters/kgi.jar < "tests/miniRA/$(basename "$f")" > "tests/exp/$(basename "$f").out"
        if ! diff -q -B "tests/out/$(basename "$f").out" "tests/exp/$(basename "$f").out" >> /tmp/out.txt  
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