#!/bin/bash
OPT="-Djava.library.path=`pwd`/lib"
javac -cp . pk01/*.java
java -cp . pk01/Main #$OPT