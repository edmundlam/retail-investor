# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

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
  - `_basics/` — Published articles (rendered at `/basics/:title/`)
  - `_drafts/` — Draft content (not published)
  - `_posts/` — Blog posts (empty, reserved for future use)
- `index.md` — Homepage, lists all articles in the `basics` collection
- `about.md` — About page
- `404.html` — Custom 404 page
- `_site/` — Generated site output (gitignored)

## Content Conventions

Articles in `collections/_basics/` use this front matter:

```yaml
---
title: "Article Title"
layout: post
---
```

Add a preservation note at the top of each article:

```markdown
> **Note:** This article was originally published on the now-defunct Retail Investor dot org website. The content has been preserved for reference and educational purposes.
```

## Permalink Structure

The site uses category-based permalinks: `/:categories/:title/`. Articles in the `basics` collection are accessible at `/basics/:title/`.

## Deployment

The site is hosted on GitHub Pages. The `github-pages` gem locks Jekyll to version 3.9.5 for compatibility. Pushing to the `master` branch triggers automatic deployment.

## Theme

Uses the `minima` theme. To override theme templates, create `_layouts/` or `_includes/` directories in the project root.