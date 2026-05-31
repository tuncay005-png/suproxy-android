#!/bin/bash
# SuProxy - GitHub push kurulum scripti
# Kullanım: bash setup-github.sh

set -e

REPO_URL="https://tuncay005-png:${GITHUB_TOKEN}@github.com/tuncay005-png/suproxy-android.git"

echo "=== GitHub remote ayarlanıyor ==="
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"
echo "Remote eklendi: github.com/tuncay005-png/suproxy-android"

echo ""
echo "=== İlk push yapılıyor ==="
git add -A
git commit -m "v" --allow-empty
git push -u origin main --force
echo ""
echo "✓ Başarıyla push edildi!"
echo "  https://github.com/tuncay005-png/suproxy-android"
