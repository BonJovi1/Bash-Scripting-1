#!/bin/bash

cat toreplace.txt | xargs -n 1 | xargs -I@ mv ./replace/@.txt ./replace/@@.txt
