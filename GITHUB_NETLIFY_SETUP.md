# 🔗 GitHub + Netlify Integration Guide

This guide will help you set up automatic deployments from GitHub to Netlify for your Fit By Jonetics website.

## 📋 Prerequisites

- GitHub account (free)
- Netlify account (free)
- Git installed on your computer
- The complete website folder

## 🚀 Step-by-Step Setup

### Step 1: Create GitHub Repository

1. **Initialize Git Repository**
   ```bash
   # Navigate to your website folder
   cd /Users/kkebaara/Desktop/fitbyjonetics-website
   
   # Initialize git repository
   git init
   
   # Add all files
   git add .
   
   # Create initial commit
   git commit -m "Initial commit: Fit By Jonetics website v2.0"
   ```

2. **Create GitHub Repository**
   - Go to [github.com](https://github.com)
   - Click "New repository"
   - Repository name: `fitbyjonetics-website`
   - Description: `Official website for Fit By Jonetics fitness app`
   - Set to Public (for free hosting)
   - Don't initialize with README (we already have files)
   - Click "Create repository"

3. **Connect Local Repository to GitHub**
   ```bash
   # Add remote origin (replace YOUR_USERNAME with your GitHub username)
   git remote add origin https://github.com/YOUR_USERNAME/fitbyjonetics-website.git
   
   # Push to GitHub
   git push -u origin main
   ```

### Step 2: Connect Netlify to GitHub

1. **Deploy from GitHub**
   - Go to [netlify.com](https://netlify.com)
   - Click "New site from Git"
   - Choose "GitHub" as your Git provider
   - Authorize Netlify to access your GitHub account

2. **Select Repository**
   - Find and select `fitbyjonetics-website`
   - Click "Deploy site"

3. **Configure Build Settings**
   - Build command: (leave empty - it's a static site)
   - Publish directory: (leave empty - files are in root)
   - Click "Deploy site"

### Step 3: Configure Netlify Settings

1. **Site Settings**
   - Go to Site Settings > Site Details
   - Change site name to `fitbyjonetics` (or your preferred name)
   - Your site will be available at `https://fitbyjonetics.netlify.app`

2. **Custom Domain (Optional)**
   - Go to Site Settings > Domain Management
   - Add your custom domain (e.g., `fitbyjonetics.com`)
   - Configure DNS settings as instructed

3. **Form Settings**
   - Go to Site Settings > Forms
   - Enable email notifications
   - Add your email address for form submissions
   - Test the contact form

## 🔄 Automatic Deployment Workflow

### How It Works

1. **Make Changes Locally**
   ```bash
   # Edit files on your computer
   # Test changes locally
   
   # Commit changes
   git add .
   git commit -m "Update website content"
   
   # Push to GitHub
   git push origin main
   ```

2. **Automatic Deployment**
   - Netlify detects the push to GitHub
   - Automatically builds and deploys your site
   - Usually takes 1-2 minutes
   - You'll get email notifications when complete

### Branch Deployments

1. **Preview Deployments**
   - Create feature branches for testing
   - Push to any branch (not just main)
   - Netlify creates preview deployments
   - Perfect for testing before going live

2. **Example Workflow**
   ```bash
   # Create feature branch
   git checkout -b feature/new-section
   
   # Make changes
   # ... edit files ...
   
   # Commit and push
   git add .
   git commit -m "Add new features section"
   git push origin feature/new-section
   
   # Netlify creates preview URL
   # Test the preview
   # Merge to main when ready
   ```

## 📧 Contact Form Configuration

### Automatic Form Detection

Your contact form is already configured for Netlify Forms:

```html
<form name="contact" method="POST" data-netlify="true" netlify-honeypot="bot-field">
```

### Form Management

1. **View Submissions**
   - Go to your Netlify dashboard
   - Click "Forms" in the sidebar
   - View all form submissions
   - Export as CSV if needed

2. **Email Notifications**
   - Go to Site Settings > Forms
   - Enable email notifications
   - Add your email address
   - Customize notification settings

3. **Spam Protection**
   - Honeypot field already included
   - Netlify provides additional spam filtering
   - Monitor submissions for spam

## 🔧 Advanced Configuration

### Environment Variables

If you need environment variables:

1. **Add in Netlify**
   - Go to Site Settings > Environment Variables
   - Add any required variables
   - Use in your build process

2. **Example Variables**
   ```
   NODE_VERSION=18
   NPM_VERSION=8
   ```

### Build Hooks

For external triggers:

1. **Create Build Hook**
   - Go to Site Settings > Build & Deploy
   - Click "Add build hook"
   - Name: "Manual Deploy"
   - Copy the webhook URL

2. **Use Build Hook**
   ```bash
   # Trigger deployment manually
   curl -X POST -d {} https://api.netlify.com/build_hooks/YOUR_HOOK_ID
   ```

### Custom Headers

Your `netlify.toml` already includes security headers:

```toml
[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-XSS-Protection = "1; mode=block"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "strict-origin-when-cross-origin"
```

## 🚀 Deployment Best Practices

### Git Workflow

1. **Main Branch Strategy**
   ```bash
   # Always work on feature branches
   git checkout -b feature/description
   
   # Make changes and commit
   git add .
   git commit -m "Descriptive commit message"
   
   # Push feature branch
   git push origin feature/description
   
   # Create pull request on GitHub
   # Review and merge to main
   ```

2. **Commit Messages**
   - Use descriptive commit messages
   - Follow conventional commits format
   - Examples:
     - `feat: add new workout category section`
     - `fix: improve mobile navigation`
     - `style: update button animations`

### Testing Before Deployment

1. **Local Testing**
   ```bash
   # Test locally with live server
   python -m http.server 8000
   # or
   npx serve .
   ```

2. **Preview Deployments**
   - Use Netlify's preview deployments
   - Test on different devices
   - Check form functionality

## 📊 Monitoring and Analytics

### Netlify Analytics

1. **Enable Analytics**
   - Go to Site Settings > Analytics
   - Enable "Netlify Analytics"
   - View traffic and performance data

2. **Monitor Performance**
   - Check Core Web Vitals
   - Monitor page load times
   - Track form conversion rates

### Google Analytics (Optional)

1. **Add GA4 Tracking**
   - Get your GA4 Measurement ID
   - Add tracking code to `index.html`
   - Test in GA4 real-time reports

## 🔄 Updates and Maintenance

### Regular Updates

1. **Content Updates**
   ```bash
   # Edit files locally
   # Test changes
   git add .
   git commit -m "Update content"
   git push origin main
   ```

2. **Automatic Deployment**
   - Netlify automatically deploys
   - Check deployment status in dashboard
   - Test live site after deployment

### Backup Strategy

1. **GitHub Backup**
   - All code is backed up on GitHub
   - Version history preserved
   - Easy to restore previous versions

2. **Netlify Backup**
   - Site configuration backed up
   - Form submissions stored
   - Easy to restore from any commit

## 🐛 Troubleshooting

### Common Issues

1. **Deployment Failures**
   - Check build logs in Netlify dashboard
   - Verify file paths and syntax
   - Ensure all assets are committed

2. **Form Not Working**
   - Verify `data-netlify="true"` attribute
   - Check form name attribute
   - Test form submission

3. **Images Not Loading**
   - Check file paths (case-sensitive)
   - Verify images are committed to Git
   - Test with different browsers

### Getting Help

1. **Netlify Support**
   - [docs.netlify.com](https://docs.netlify.com)
   - Community forums
   - Support tickets

2. **GitHub Support**
   - [docs.github.com](https://docs.github.com)
   - GitHub Community
   - Support tickets

## 📞 Support Resources

### Documentation
- [Netlify Documentation](https://docs.netlify.com)
- [GitHub Documentation](https://docs.github.com)
- [Git Documentation](https://git-scm.com/doc)

### Community
- [Netlify Community](https://community.netlify.com)
- [GitHub Community](https://github.community)
- [Stack Overflow](https://stackoverflow.com)

---

**Last Updated**: January 2024  
**Version**: 2.0  
**Maintained by**: Fit By Jonetics Team
