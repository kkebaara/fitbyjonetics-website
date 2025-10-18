#!/bin/bash

# Fit By Jonetics Website - GitHub Setup Script
# This script helps you set up GitHub integration for your website

echo "🚀 Setting up GitHub integration for Fit By Jonetics website..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   - macOS: brew install git"
    echo "   - Windows: Download from https://git-scm.com"
    echo "   - Linux: sudo apt-get install git"
    exit 1
fi

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Please run this script from the website root directory"
    echo "   (where index.html is located)"
    exit 1
fi

# Initialize git repository if not already done
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
echo "📝 Adding files to Git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "ℹ️  No changes to commit"
else
    echo "💾 Creating initial commit..."
    git commit -m "Initial commit: Fit By Jonetics website v2.0 with enhanced UI/UX"
    echo "✅ Initial commit created"
fi

# Check if remote origin exists
if git remote get-url origin &> /dev/null; then
    echo "✅ Remote origin already configured"
    echo "   Remote URL: $(git remote get-url origin)"
else
    echo "🔗 Please add your GitHub repository as remote origin:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/fitbyjonetics-website.git"
    echo "   git push -u origin main"
fi

echo ""
echo "🎉 Setup complete! Next steps:"
echo ""
echo "1. Create a GitHub repository:"
echo "   - Go to https://github.com/new"
echo "   - Repository name: fitbyjonetics-website"
echo "   - Make it public"
echo "   - Don't initialize with README"
echo ""
echo "2. Connect your local repository:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/fitbyjonetics-website.git"
echo "   git push -u origin main"
echo ""
echo "3. Connect to Netlify:"
echo "   - Go to https://netlify.com"
echo "   - Click 'New site from Git'"
echo "   - Choose GitHub and select your repository"
echo "   - Deploy settings: (leave empty for static site)"
echo ""
echo "4. Configure your site:"
echo "   - Change site name to 'fitbyjonetics'"
echo "   - Enable form notifications"
echo "   - Test the contact form"
echo ""
echo "📚 For detailed instructions, see GITHUB_NETLIFY_SETUP.md"
echo ""
echo "✨ Your website is ready for GitHub + Netlify deployment!"
