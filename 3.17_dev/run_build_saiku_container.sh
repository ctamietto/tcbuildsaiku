#!/bin/bash


if [ ! -f /home/ctamietto/git/workspace/pkbuildsaiku/development/saiku_src_3.17_dev/pom.xml ] 
then
    echo "non esiste il file /home/ctamietto/git/workspace/pkbuildsaiku/development/saiku_src_3.17_dev/pom.xml"
    exit -1
fi

cd /home/ctamietto/git/workspace/pkbuildsaiku/development/saiku_src_3.17_dev

docker run -it --rm --name pk_build_saiku_dev -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.6.1-jdk-8 mvn clean install -DskipTests


