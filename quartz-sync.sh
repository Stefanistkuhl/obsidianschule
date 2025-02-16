#!/bin/bash
cd ~/quartz
rm -rf ~/quartz/content/*
cp -r ~/obsidianschule/* ~/quartz/content/
rm -rf ~/quartz/content/.git
cd ~/quartz
npx quartz sync
