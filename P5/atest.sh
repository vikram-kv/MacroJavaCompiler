#!/bin/bash
    COUNT=0
    PASS=0
    rm atests/out/*
    rm atests/exp/*
    rm atests/MIPS/*.s
    find . -type f -name "*.class" -delete
    javac A5.java
    for f in atests/miniRA/*
    do
        java A5 < "atests/miniRA/$(basename "$f")" > "atests/MIPS/$(basename "$f").s"
        cd atests/MIPS/
        java -jar mars.jar nc sm $(basename "$f").s > "../out/$(basename "$f").out"
        cd ../..
        java -jar atests/interpreters/kgi.jar < "atests/miniRA/$(basename "$f")" > "atests/exp/$(basename "$f").out"
        if ! diff -q -B "atests/out/$(basename "$f").out" "atests/exp/$(basename "$f").out" >> /tmp/out.txt  
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