#!/bin/bash

# Ensure inside git repo
if [ ! -d ".git" ]; then
  echo "❌ Not inside a git repository"
  exit 1
fi

# Check branch
branch=$(git branch --show-current)
echo "📍 Current branch: $branch"

# Pull latest changes safely
echo "🔄 Pulling latest changes..."
git pull origin $branch --rebase

# Add all changes
echo "📦 Staging changes..."
git add .

# Ask commit message
read -p "📝 Commit message: " msg

# Commit with timestamp
git commit -m "$msg | $(date '+%d-%m-%Y %H:%M')"

# Push safely
echo "🚀 Pushing to GitHub..."
git push origin $branch

echo "✅ Professional push completed!"
