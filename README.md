# Windows XP v86 Emulator - Self-Hosted

🪟 Full Windows XP desktop in your browser, completely free and self-hosted.

## Features

✅ **Windows XP** - Full desktop emulation
✅ **Audio Support** - Web Audio API enabled
✅ **Networking** - User-mode networking (local services)
✅ **Low Resources** - Runs on minimal hardware
✅ **No Render Cost** - Host anywhere (VPS, your PC, GitHub Pages + worker)
✅ **Lightweight Browser** - Dillo pre-installed (minimal MB)

## Quick Start

### Option 1: Docker (Recommended)

```bash
docker build -t xp-emulator .
docker run -p 8080:8080 xp-emulator
```

Then open: `http://localhost:8080`

### Option 2: Direct Node.js

```bash
npm install
npm run build
npm run serve
```

### Option 3: Host Anywhere

- **VPS** (DigitalOcean, Linode, AWS EC2 - $5/month)
- **Your PC** - Run locally
- **Railway.app** - Free tier, better than Render
- **Replit** - Free hosting

## Setup

1. **Place your Windows XP ISO** in the repo root:
   ```bash
   mv windows_xp.iso ./
   ```

2. **Build and run**:
   ```bash
   docker build -t xp-emulator .
   docker run -p 8080:8080 xp-emulator
   ```

The Dockerfile will automatically convert your ISO to the QCOW2 image format.

## Controls

- **Click** - Focus on emulator
- **Right-click** - Context menu
- **Ctrl+Alt+Del** - Reboot
- **Double-click** - Fullscreen (on supported browsers)

## Pre-installed Software

- **Dillo Browser** - Ultra-lightweight (~2MB)
- **Text Editor**
- **File Manager**
- **Networking Tools**

## Performance Tips

- Allocate 512MB+ RAM to container
- Use modern browser (Chrome/Firefox recommended)
- On slow connections, XP may take 2-3 minutes to boot
- Audio works best on Chrome/Firefox

## Hosting Recommendations

| Provider | Cost | Notes |
|----------|------|-------|
| **Railway.app** | $5/month | Great for v86, better than Render |
| **DigitalOcean App Platform** | $5/month | Fast, reliable |
| **Linode** | $5/month | Good uptime |
| **Your PC** | Free | Use ngrok to expose |
| **Oracle Cloud** | Free tier | Always free instances |

## License

v86 is open-source. Windows XP must be licensed separately.

## Support

For v86 issues: https://github.com/copy/v86
