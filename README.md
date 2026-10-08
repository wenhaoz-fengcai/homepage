# Wenhao Zhang Academic Website

All project files must remain inside this directory.

This repository contains Wenhao Zhang's bilingual, Markdown-driven Jekyll academic website.

## Local development

```bash
bundle config set --local path vendor/bundle
RUBYOPT="-r$(pwd)/scripts/no-dsymutil.rb" bundle install
bundle exec jekyll serve
```

The `RUBYOPT` prefix is a local workaround for native-extension linking with Ruby 4 on the current macOS toolchain. It changes no global Ruby or system configuration. Once dependencies are installed, ordinary `bundle exec` commands are sufficient.

## Production build

```bash
bundle exec jekyll build
```

The generated static site is written to `_site/`.

Frequently updated content lives in `_students/`, `_projects/`, `_publications/`, `_teaching/`, and `_news/`. Edit those Markdown files rather than the page templates.
