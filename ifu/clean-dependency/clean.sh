#!/bin/sh

python3 sep.py
sudo apt purge `cat out.txt`
