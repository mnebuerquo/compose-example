#!/bin/sh

echo "Set PWD to the app directory, which will become the build context of the container."
cd context
echo "PWD is now ${PWD}"

echo "Run the run script which sets up compose paths like in my devops script."
../compose/run.sh build dev
