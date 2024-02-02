#!/bin/bash

echo "Hello, please introduce yourself."

echo -n "Your name: "
read -r name

echo "Are you human?"

echo -n "y/n: "
read -r human

echo "What is your favorite programming language?"

echo -n "Your answer: "
read -r lang

cat << EOF
Answers:
1. $name
2. $human
3. $lang
EOF