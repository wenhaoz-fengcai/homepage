# Static deployment notes

The Wenhao Zhang academic website is generated as static HTML and CSS. A production build writes the deployable site to `_site/`.

## Build

```bash
cd ~/Desktop/zhang-lab-site
bundle exec jekyll build
```

## Preview locally

```bash
cd ~/Desktop/zhang-lab-site
bundle exec jekyll serve
```

## Nginx

`nginx.conf.example` is documentation only. Replace `/path/to/zhang-lab-site/_site` with the actual absolute path used on the host, review it with the server administrator, and include it through the host's normal Nginx configuration process.

No Ruby or Jekyll runtime is required by Nginx after the static build has completed.
