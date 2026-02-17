@echo off
setlocal enabledelayedexpansion

cd /d "d:\AI Trip Planner\ai-trip-planner"

echo Pulling remote changes...
git config --global core.editor "true"
git pull --allow-unrelated-histories -m "Merge remote changes" origin main

if !errorlevel! equ 0 (
    echo Pull successful. Pushing to remote...
    git push -u origin main
    echo Push complete!
) else (
    echo Pull failed with error code !errorlevel!
)

pause
