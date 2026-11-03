# Shirazi AI Labs — GitHub Pages website

A static, responsive portfolio/research website for **Shirazi AI Labs**, designed in the selected **Editorial Research** visual direction (ivory, forest green, serif display typography, scientific geometry).

## Contents

- `index.html` — landing page
- `research/` — mathematical, biomedical, physics/astronomy research areas
- `engineering/` — applied AI, platform, demo engineering and GRC
- `writing/` — three SEO-friendly editorial pages and index
- `about/` / `contact/` — founder identity and public GitHub contact
- `assets/` — pure CSS, vanilla JS, SVG graphics, brand icon, social preview
- `sitemap.xml`, `robots.txt`, `CNAME.example`, `.nojekyll` — GitHub Pages + search indexing

## Important publication guardrail

Research pages deliberately do **not** link unverified DOIs or claim peer review, independent validation, clinical efficacy, or a confirmed exoplanet discovery. Add publication links only after verifying each public record and exact title. No private methods or research algorithms are disclosed.

## How to publish on GitHub Pages

1. On https://github.com/new create a **public** empty repository named `shiraziailabs` under `qmanballer-svg` (the connected GitHub integration cannot create repositories).
2. Upload the **contents** of this folder to the repository root, retaining the hidden `.nojekyll` file. You can use GitHub's **Add file → Upload files** or push with Git.
3. Open **Settings → Pages**, set Build and deployment to **Deploy from a branch**, branch `main`, folder `/(root)`, and save.
4. First preview via `https://qmanballer-svg.github.io/shiraziailabs/`. After checking the site, set `shiraziailabs.com` in **Settings → Pages → Custom domain** and save. GitHub will create or update CNAME, or rename `CNAME.example` to `CNAME` when ready.
5. Before modifying DNS, verify the domain is attached to your repository. In the domain's DNS manager, replace only the old **website** A / AAAA / ALIAS entries for the apex with GitHub Pages values (below), and set `www` CNAME to `qmanballer-svg.github.io`. **Do not remove MX, SPF, DKIM, or other email-related TXT records**, to preserve Google Workspace mail.
6. Once DNS propagates and GitHub issues a certificate, enable **Enforce HTTPS**.
7. Set up Search Console property verification and submit `https://shiraziailabs.com/sitemap.xml` after launch. Add verification code to `<head>` once available.

### GitHub Pages apex records (verify against latest docs before changing DNS)

```
A @ 185.199.108.153
A @ 185.199.109.153
A @ 185.199.110.153
A @ 185.199.111.153
CNAME www qmanballer-svg.github.io
```

Optional IPv6 AAAA addresses are listed in official docs:
https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site

## Local preview

From this directory run `python3 -m http.server 8080` and visit http://localhost:8080.

## To personalize before broader promotion

- Replace GitHub-only contact with **verified** email and LinkedIn URLs.
- Add approved photos and project screenshots as desired.
- Publish individual DOI links only after verifying status and public record content.
- Add a privacy policy and cookie disclosures if analytics, forms, or trackers are introduced. This initial site has no analytics, cookies, or external fonts.

## Stack

Plain HTML, CSS, JavaScript and SVG. No build tooling, external dependency, API key, or hosting bill required for the static site. Relative internal navigation should be deployed at the root custom domain `shiraziailabs.com`.
