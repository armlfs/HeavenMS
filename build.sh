#!/bin/sh

mkdir -p build
javac -cp 'cores/mina-core-2.0.7.jar:cores/mysql-connector-java-bin.jar:cores/HikariCP-java7-2.4.12.jar' -d build $(find src -name *.java)
(cd build && jar cvf HeavenMS.jar .)
mkdir -p dist && mv build/HeavenMS.jar dist/
