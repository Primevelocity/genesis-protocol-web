#!/bin/bash
# Genesis Protocol - Cloudflare Pages Deployment

echo "🚀 GENESIS PROTOCOL DEPLOYMENT"
echo "================================"
echo ""

# Check if git repo exists
if [ ! -d .git ]; then
    echo "Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit - Genesis Protocol website"
fi

echo ""
echo "📋 DEPLOYMENT CHECKLIST:"
echo ""
echo "1. Create GitHub repository:"
echo "   Name: genesis-protocol-web"
echo "   Visibility: PUBLIC"
echo "   Initialize: No (we're pushing existing)"
echo ""
echo "2. Push to GitHub:"
echo "   git remote add origin https://github.com/bclark00/genesis-protocol-web.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Cloudflare Pages Setup:"
echo "   - Go to: https://dash.cloudflare.com/"
echo "   - Pages → Create a project"
echo "   - Connect to Git → Select genesis-protocol-web"
echo "   - Build settings:"
echo "     Framework: None"
echo "     Build command: (empty)"
echo "     Output directory: /"
echo "   - Deploy!"
echo ""
echo "4. Domain Setup (if not done):"
echo "   - Register: genesisprotocol.org"
echo "   - Add to Cloudflare"
echo "   - In Pages project: Custom domains → Add genesisprotocol.org"
echo ""
echo "🎯 Current files ready for deployment:"
ls -lh
echo ""
echo "✅ Ready to deploy!"
