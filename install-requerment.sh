#!/bin/bash

pkg update && pkg upgrade -y
pkg install figlet
pkg install metasploit
pkg install python
pip install termcolor
pip install colored