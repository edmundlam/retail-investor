# AGENTS.md

This file provides guidance to AI coding agents when working with code in this repository.

## Project Overview

This is a Jekyll static site that archives financial advice content from the defunct "Retail Investor dot org" website. The site preserves educational content about personal finance, saving, and investing for Canadian retail investors.

## Development Commands

```bash
# Install dependencies (first time or after Gemfile changes)
make install

# Start local development server with auto-rebuild (serves at http://localhost:4000/retail-investor/)
make run

# Build the site for production
make build

# Clean build artifacts
make clean
```

## Site Structure

- `_config.yml` — Jekyll configuration (site title, collections, permalink style)
- `collections/` — Content directory (not `posts/` or `pages/`)
  - `_basics/` — Investing basics articles (rendered at `/basics/:title/`)
  - `_retirement/` — Retirement planning articles (rendered at `/retirement/:title/`)
  - `_stock_picking/` — Stock picking content (empty, reserved)
  - `_cash_flow/` — Cash flow debate content (empty, reserved)
  - `_misc/` — Miscellaneous topics (empty, reserved)
  - `_drafts/` — Draft content (not published)
  - `_posts/` — Blog posts (empty, reserved for future use)
- `_includes/` — Reusable includes (e.g., `preservation-note.md`)
- `images/` — Site images and diagrams referenced in articles
- `index.md` — Homepage, lists articles from active collections (`basics`, `retirement`); other collections are commented out and ready to activate
- `about.md` — About page
- `404.html` — Custom 404 page
- `_site/` — Generated site output (gitignored)

## Content Conventions

Articles in `collections/_basics/` use this front matter:

```yaml
---
title: "Full Article Title"
short_title: "Short Title"
layout: post
order: 10
---
```

Add the preservation note include at the top of each article:

```liquid
{% include preservation-note.md %}
```

## Internal Linking

Cross-article internal links must use the `{{ site.baseurl }}/<collection>/` prefix matching the collection name:

```liquid
[Why Bother]({{ site.baseurl }}/basics/why-bother/)
[RRSP Nitty Gritty]({{ site.baseurl }}/retirement/rrsp-nitty-gritty/)
```

## Anchor Links (TOC)

Kramdown auto-generates IDs for headings, but the results can be unpredictable. For reliable TOC links, add explicit `{#id}` attributes:

```markdown
## Section Title {#section-id}

Then link to it with:
[Section Title](#section-id)
```

## Permalink Structure

The site uses category-based permalinks: `/:categories/:title/`. Articles in the `basics` collection are accessible at `/basics/:title/`.

## Deployment

The site is hosted on GitHub Pages. The `github-pages` gem locks Jekyll to version 3.9.5 for compatibility. Pushing to the `master` branch triggers automatic deployment.

## Theme

Uses the `minima` theme. To override theme templates, create `_layouts/` or `_includes/` directories in the project root.