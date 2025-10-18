# Fit By Jonetics Website

A static website for Fit By Jonetics - a comprehensive fitness tracking application. This website showcases the app's features, workout categories, nutrition tracking capabilities, and provides a contact form for user inquiries.

## 🚀 Quick Start

### Prerequisites
- No build tools required - this is a static website
- Modern web browser
- Netlify account (for deployment)

### Local Development
1. Clone or download this repository
2. Open `index.html` in your web browser
3. Or use a local server:
   ```bash
   # Using Python
   python -m http.server 8000
   
   # Using Node.js
   npx serve .
   
   # Using PHP
   php -S localhost:8000
   ```

## 📁 Project Structure

```
fitbyjonetics-website/
├── index.html              # Main homepage
├── assets/
│   ├── css/
│   │   └── style.css       # Main stylesheet
│   ├── js/
│   │   └── script.js       # JavaScript functionality
│   └── images/             # All website images
│       ├── icon.png        # App icon
│       ├── favicon.png     # Favicon
│       ├── splash-screen.png
│       ├── jones-background.png
│       ├── get-started-bg.png
│       ├── workout-categories/  # Workout category images
│       └── pages/          # App screenshots
├── netlify.toml            # Netlify configuration
├── robots.txt              # SEO robots file
├── sitemap.xml            # SEO sitemap
└── README.md              # This file
```

## 🎨 Features

### Design & User Experience
- **Responsive Design**: Fully responsive across all devices
- **Modern UI**: Clean, professional design matching the app's branding
- **Smooth Animations**: CSS animations and transitions
- **Accessibility**: WCAG compliant with keyboard navigation support
- **Performance**: Optimized for fast loading

### Content Sections
- **Hero Section**: Eye-catching introduction with app screenshots
- **Features**: Key app capabilities and benefits
- **Workout Categories**: 5 main workout categories with descriptions
- **Nutrition Tracking**: Smart nutrition features showcase
- **About**: App overview and key statistics
- **Contact**: Contact form with Netlify Forms integration

### Technical Features
- **SEO Optimized**: Meta tags, sitemap, robots.txt
- **Form Handling**: Netlify Forms integration for contact submissions
- **Security**: Security headers and CSP configuration
- **Caching**: Optimized caching for static assets
- **Analytics Ready**: Prepared for Google Analytics integration

## 🚀 Deployment to Netlify

### Method 1: Drag & Drop (Easiest)
1. Go to [Netlify](https://netlify.com)
2. Sign up or log in
3. Drag the entire website folder to the deploy area
4. Your site will be live at a random URL
5. Go to Site Settings > Site Details > Change site name to `fitbyjonetics`

### Method 2: Git Integration
1. Push this code to a GitHub repository
2. Connect the repository to Netlify
3. Deploy automatically on every push

### Method 3: Netlify CLI
```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login to Netlify
netlify login

# Deploy
netlify deploy --prod --dir .
```

## 📧 Contact Form Management

### How Netlify Forms Work
The contact form uses Netlify Forms, which automatically:
- Captures form submissions
- Sends notifications to your email
- Stores submissions in your Netlify dashboard
- Provides spam protection

### Accessing Form Submissions
1. Log into your Netlify dashboard
2. Go to your site
3. Navigate to "Forms" in the sidebar
4. View all submissions in the dashboard
5. Export submissions as CSV if needed

### Email Notifications
1. Go to Site Settings > Forms
2. Enable email notifications
3. Add your email address
4. Customize notification settings

### Form Configuration
The contact form includes:
- **Name field** (required)
- **Email field** (required, validated)
- **Subject field** (required)
- **Message field** (required)
- **Honeypot field** (spam protection)
- **Client-side validation**
- **Success/error notifications**

## 🛠️ Customization

### Updating Content
- **Text Content**: Edit `index.html` directly
- **Styling**: Modify `assets/css/style.css`
- **Functionality**: Update `assets/js/script.js`
- **Images**: Replace files in `assets/images/`

### Adding New Sections
1. Add HTML structure to `index.html`
2. Add corresponding CSS to `style.css`
3. Update navigation links
4. Test responsiveness

### SEO Optimization
- Update meta tags in `index.html`
- Modify `sitemap.xml` for new pages
- Update `robots.txt` if needed
- Add structured data for better search results

## 📱 Responsive Breakpoints

- **Desktop**: 1200px and above
- **Tablet**: 768px - 1199px
- **Mobile**: Below 768px
- **Small Mobile**: Below 480px

## 🔧 Browser Support

- Chrome 60+
- Firefox 60+
- Safari 12+
- Edge 79+
- Mobile browsers (iOS Safari, Chrome Mobile)

## 📊 Performance Features

- **Lazy Loading**: Images load as needed
- **Optimized Assets**: Compressed images and minified CSS/JS
- **Caching**: Proper cache headers for static assets
- **CDN**: Netlify's global CDN for fast delivery
- **Compression**: Gzip compression enabled

## 🔒 Security Features

- **CSP Headers**: Content Security Policy for XSS protection
- **Security Headers**: X-Frame-Options, X-XSS-Protection
- **Form Protection**: Honeypot spam protection
- **HTTPS**: Automatic SSL certificate

## 📈 Analytics Integration

To add Google Analytics:
1. Get your GA tracking ID
2. Add this script before `</head>` in `index.html`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_TRACKING_ID');
</script>
```

## 🐛 Troubleshooting

### Common Issues
1. **Images not loading**: Check file paths and case sensitivity
2. **Form not working**: Ensure Netlify Forms is enabled
3. **Styling issues**: Check CSS file path and syntax
4. **Mobile layout**: Test on actual devices, not just browser dev tools

### Debug Mode
Add `?debug=true` to URL to see console logs and debug information.

## 📞 Support

For technical support or questions about the website:
- Email: info@fitbyjonetics.com
- Check the contact form on the website
- Review this documentation

## 📄 License

This website is created for Fit By Jonetics. All rights reserved.

---

**Last Updated**: January 2024  
**Version**: 1.0.0  
**Maintained by**: Fit By Jonetics Team
