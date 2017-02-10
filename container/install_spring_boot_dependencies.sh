#!/bin/sh

RED='\033[0;31m'
NC='\033[0m' # No Color
YELLOW='\033[0;33m'
BLUE='\033[0;34m'

function install {
  #echo -e "${BLUE}Installing $1 ${NC}"
  mvn dependency:get -Dartifact=$1 > /tmp/maven-$1.log
  if [ $? -eq 0 ]; then
    echo -e "🍻  ${YELLOW}$1 installed successfully ${NC}"
  else
    echo -e "☠️  ${RED}Unable to install $1 ${NC}"
    cat /tmp/maven-$1.log
    exit 1
  fi
}

echo -e "${BLUE}Installing Spring Boot ${SPRING_BOOT_VERSION} dependencies..."
install $SPRING_BOOT_GROUP:spring-boot-starter-web:$SPRING_BOOT_VERSION
install junit:junit:$JUNIT_VERSION
echo -e "${BLUE}Spring Boot ${SPRING_BOOT_VERSION} dependencies installed ${NC}"
rm -Rf /tmp/maven-*