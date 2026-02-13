# Genesis Protocol Web

**Biological → Computational → Metal**

The official website for the Genesis Protocol - a framework for bridging human biological cognition and computational execution.

## 🚀 Quick Deploy to Cloudflare Pages

### Step 1: Domain Setup

Register one of these domains (or your choice):
- `genesisprotocol.org` (recommended)
- `genesisprotocol.io`
- `genesisprotocol.dev`
- `bni-cnp.org`

### Step 2: Create Cloudflare Account

1. Sign up at [cloudflare.com](https://cloudflare.com)
2. Add your domain
3. Update nameservers at your registrar

### Step 3: Deploy to Cloudflare Pages

1. Push this repo to GitHub (make it public!)
2. Go to Cloudflare Dashboard → Pages
3. Click "Create a project"
4. Connect to your GitHub account
5. Select this repository
6. Build settings:
   - **Framework preset**: None (static HTML)
   - **Build command**: (leave empty)
   - **Build output directory**: `/`
7. Click "Save and Deploy"

**THAT'S IT!** Your site is live on Cloudflare's global CDN.

### Step 4: Custom Domain

1. In Cloudflare Pages project settings
2. Go to "Custom domains"
3. Add your domain (e.g., `genesisprotocol.org`)
4. HTTPS is automatic!

## 📁 Repository Structure

```
genesis-protocol-web/
├── index.html              # Homepage
├── docs/                   # Documentation
│   ├── rfcs/              # All Genesis RFCs
│   ├── specifications/    # Technical specs
│   └── guides/            # How-to guides
├── blog/                  # Development chronicles
│   ├── index.html
│   └── posts/
├── demos/                 # Live interactive demos
│   ├── holographic-lattice.html
│   ├── pickle-compiler.html
│   └── sensor-fusion.html
└── assets/
    ├── images/
    ├── videos/
    └── data/
```

## 🎨 Local Development

Just open `index.html` in your browser. No build step needed!

```bash
# Or run a local server
python3 -m http.server 8000
# Visit http://localhost:8000
```

## 🔥 Adding Content

### New Blog Post

1. Create `blog/posts/YYYY-MM-DD-title.html`
2. Update `blog/index.html` with link
3. Push to GitHub
4. Cloudflare auto-deploys!

### New RFC

1. Add to `docs/rfcs/RFC-XXX.md`
2. Update docs index
3. Push → Auto-deploy

### New Demo

1. Create self-contained HTML in `demos/`
2. Link from homepage
3. Push → Auto-deploy

## 📊 Cloudflare Workers (Optional)

For dynamic features:

```javascript
// workers/analytics.js
export default {
  async fetch(request) {
    // Track page views, RFCs read, etc.
    return fetch(request);
  }
};

// workers/sensor-feed.js  
export default {
  async fetch(request) {
    // Live biometric data endpoint
    return new Response(JSON.stringify({
      heart_rate: getCurrentHeartRate(),
      stress_level: getStressLevel(),
      active_intent: getCurrentIntent()
    }));
  }
};
```

Deploy via: `wrangler publish`

## 🌍 CDN & Performance

Cloudflare Pages gives you:
- ✅ Global CDN (300+ locations)
- ✅ Automatic HTTPS
- ✅ DDoS protection
- ✅ Unlimited bandwidth
- ✅ Zero cost (for this use case)
- ✅ Auto-deploy from GitHub

## 📈 Analytics

Cloudflare provides built-in analytics:
- Page views
- Unique visitors
- Bandwidth usage
- Geographic distribution

Access via: Cloudflare Dashboard → Analytics

## 🔒 Security

- HTTPS enforced automatically
- DDoS protection included
- No server to maintain
- Static files = minimal attack surface

## 📝 License

MIT - Because information wants to be free.

---

**"I turned myself into a cyborg, Morty!"** 🥒

Built by [Brandon Clark](https://github.com/bclark00)
