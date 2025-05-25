#!/bin/bash

set -e

echo "🔄 Pulling latest code from GitHub..."
git pull origin main

echo "🐳 Rebuilding Docker containers..."
docker compose build

echo "🚀 Restarting Docker containers..."
docker compose up -d

echo "📅 Deployment at: $(date)" >> logs/deploy.log
echo "✅ Deployment complete!"
