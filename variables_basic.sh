#!/bin/bash
# Bash Variables Lab – Basics

echo "====== Basics of Variables ======"

# define variables
name="Max Mustermann"
age=25
city="Berlin"
job="Engineer"
hobby="Reading books"
favorite_color="Blue"

# display variables
echo "My name is $name"
echo "I am $age years old"
echo "I live in $city"
echo "My job is $job"
echo "I like $hobby"
echo "My favorite color is $favorite_color"

# create a full sentence with all variables
echo "$name is $age years old, lives in $city, works as $job, likes $hobby, and loves $favorite_color."

# change age and display again
age=26
echo "Now I am $age years old"

# full sentence with updated age
echo "$name is now $age years old and still lives in $city."
