#!/bin/sh
#  test.sh
#  Created by Joshua Higginbotham on 11/8/15.

# This is only provided for your convenience.
# The tests used in this file may or may not
# match up with what is called for for the report,
# so be sure to read that part of the handout.
# But you're free to modify this script however
# you need to, it's not graded.

echo "Cleaning and compiling..."
make
echo "Running tests... n = 10000 w= variable"
echo "Test 1, w = 1:" >> output.txt
./client -n 10000 -w 1
echo "Test 1, w = 25:" >> output.txt
./client -n 10000 -w 25
echo "Test 2, w = 50:" >> output.txt
./client -n 10000 -w 50
echo "Test 3, w = 75:" >> output.txt
./client -n 10000 -w 75
echo "Test 4, w = 100:" >> output.txt
./client -n 10000 -w 100
echo "Test 5, w = 125:" >> output.txt
./client -n 10000 -w 125
echo "Test 6, w = 150:" >> output.txt
./client -n 10000 -w 150
echo "Test 7, w = 175:" >> output.txt
./client -n 10000 -w 175
echo "Test 7, w = 200:" >> output.txt
./client -n 10000 -w 200
echo "Test 7, w = 225:" >> output.txt
./client -n 10000 -w 225
echo "Test 8, w = 250:" >> output.txt
./client -n 10000 -w 250
echo "Test 8, w = 275:" >> output.txt
./client -n 10000 -w 275
echo "Test 9, w = 300:" >> output.txt
./client -n 10000 -w 300
echo "Test 8, w = 325:" >> output.txt
./client -n 10000 -w 325
echo "Test 10, w = 350:" >> output.txt
./client -n 10000 -w 350
echo "Test 11, w = 375:" >> output.txt
./client -n 10000 -w 375
echo "Test 12, w = 400:" >> output.txt
./client -n 10000 -w 400
echo "Test 12, w = 425:" >> output.txt
./client -n 10000 -w 425
echo "Test 12, w = 450:" >> output.txt
./client -n 10000 -w 450
echo "Test 12, w = 475:" >> output.txt
./client -n 10000 -w 475
echo "Test 12, w = 500:" >> output.txt
./client -n 10000 -w 500

echo "Finished!"
