#!/bin/sh
cd "/d/AI Trip Planner/ai-trip-planner" 2>/dev/null || cd "d:\\AI Trip Planner\\ai-trip-planner"
export GIT_EDITOR=true
git config --global core.editor "true"
git pull --allow-unrelated-histories --no-edit origin main
git push -u origin main
