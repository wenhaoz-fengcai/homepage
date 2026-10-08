# ZHANG LAB Website — Codex Implementation Instructions

## 0. Project identity

**Site name:** ZHANG LAB  
**Subtitle:** *AI for Health*

The website should be a minimalist academic lab website inspired by simple Stanford/MIT faculty and lab websites. It should feel serious, scholarly, durable, and content-first rather than like a startup landing page.

Primary research framing:

1. **Causal Intelligence** — understanding why disease emerges.
2. **Disease Dynamics** — understanding how disease evolves.
3. **Clinical Intelligence** — understanding how we can intervene.

Core English mission statement:

> We develop AI to understand why disease emerges, how it evolves, and how we can intervene earlier and more effectively.

Chinese content should use the PI's existing grant language and scientific framing rather than literal translation. Preferred Chinese concepts include:

- 未病态
- 因果智能
- 因果表征
- 因果弱信号识别
- 时空风险演化
- 健康状态转迁
- 疾病动态演化
- 反事实推演
- 个体治疗效应
- 精准干预
- 主动防控
- 泛血管健康
- 健康数字表型
- 健康基础模型
- 世界模型
- 多模态生理状态表征
- 从“已病诊疗”向“未病防控”前移
- 从风险预测向个体获益评估与主动干预转变
- “观测—演化—干预”的因果智能体系

Chinese copy should sound like a serious NSFC / scientific research narrative, but remain concise enough for a website.

---

# 1. STRICT FILESYSTEM BOUNDARY

You are ONLY allowed to work inside:

```text
~/Desktop/zhang-lab-site/
```

This directory is the entire workspace.

You MUST NOT:

- create, modify, delete, rename, move, or inspect files outside `~/Desktop/zhang-lab-site/`
- modify `~/.bashrc`, `~/.zshrc`, `~/.gitconfig`, `~/.gem`, `~/.bundle`, or any user/system configuration
- modify `/etc`, `/usr`, `/opt`, `/var`, `/Library`, `/Applications`, or any system directory
- modify any other directory under Desktop
- modify the existing personal website
- touch any existing Git repository outside this project
- install system packages
- use `sudo`
- modify Nginx configuration on the machine
- copy files into `/var/www` or any live web-server directory
- deploy to a remote server unless explicitly instructed later
- use any temporary working directory outside `~/Desktop/zhang-lab-site/`

Before EVERY filesystem operation, assume the path must be inside:

```text
~/Desktop/zhang-lab-site/
```

If a required operation would affect a path outside this directory, STOP and report it instead of executing it.

First create this folder if it does not exist, then `cd` into it.

Verify:

```bash
pwd
```

The resolved absolute path must point to:

```text
~/Desktop/zhang-lab-site
```

All project files, dependencies, caches, build artifacts, generated HTML, deployment examples, and scripts must remain inside this directory.

---

# 2. TECH STACK

Use:

- Jekyll
- Markdown for editable content
- Liquid templates
- HTML
- CSS
- minimal vanilla JavaScript only where necessary

Do NOT use:

- React
- Vue
- Angular
- Next.js
- Astro
- a database
- WordPress
- a CMS
- a Node-based frontend framework

The final website must build to static HTML suitable for direct Nginx hosting.

Jekyll build output must remain inside:

```text
~/Desktop/zhang-lab-site/_site/
```

If Bundler is used, dependencies must remain local to the project:

```bash
bundle config set --local path vendor/bundle
```

Do not install Ruby gems globally.

Do not modify the user's Ruby installation.

If Ruby, Bundler, or Jekyll is unavailable, STOP and report the missing dependency. Do not install system-level software automatically.

---

# 3. DESIGN PRINCIPLES

The website should be intentionally simple.

Use:

- white background
- near-black text
- restrained grayscale
- optional single subtle accent color
- strong typography
- generous whitespace
- thin horizontal rules
- responsive layout
- fast-loading static pages
- accessible semantic HTML
- system fonts unless there is a compelling reason otherwise

Avoid:

- gradients
- heavy shadows
- decorative animation
- generic AI-brain graphics
- stock photos
- giant startup-style hero sections
- excessive cards
- excessive rounded corners
- complex motion effects
- glassmorphism
- flashy interaction
- unnecessary JavaScript

The site should look closer to a simple academic research group website than a commercial AI company.

Suggested overall content width:

```text
1000–1100 px
```

Suggested reading width:

```text
680–760 px
```

---

# 4. BILINGUAL REQUIREMENT

The site must support both **English** and **Chinese**.

A language switch must appear in the **top-right corner of the header** on every page.

Recommended control:

```text
EN | 中文
```

or

```text
English | 中文
```

Keep it visually subtle.

## 4.1 Language behavior

Use separate static Jekyll pages for each language rather than client-side machine translation.

Recommended URL structure:

```text
/
/research/
/people/
/publications/
/news/
/join/

/zh/
/zh/research/
/zh/people/
/zh/publications/
/zh/news/
/zh/join/
```

English should be the default root language.

The language switch must map users to the equivalent page in the other language whenever possible.

Examples:

```text
/research/      <-> /zh/research/
/people/        <-> /zh/people/
/publications/  <-> /zh/publications/
```

Do not use automatic browser translation.

Do not rely on Google Translate.

Do not maintain Chinese copy as a literal sentence-by-sentence translation of English. Chinese should use the lab's own scientific language.

## 4.2 Chinese scientific writing style

Chinese copy should use concise, formal academic wording derived from the PI's existing research narrative.

Preferred conceptual structure:

### 理论层：因果智能

Focus on:

- 疾病为何发生
- 健康稳态向疾病稳态转迁的因果机制
- 未病态的可计算失稳机制
- 因果弱信号识别
- 因果结构发现
- 因果表征

Suggested short website phrasing:

> 研究健康稳态向疾病稳态转迁中的因果机制，发展因果结构发现、因果表征与弱信号识别方法，为疾病早期识别与机制理解建立理论基础。

### 模型层：疾病动态演化

Focus on:

- 疾病如何演化
- 健康状态转迁
- 时空风险演化
- 多模态纵向建模
- 健康基础模型
- 医疗世界模型
- 多器官协同
- 医院—居家连续健康建模

Suggested short website phrasing:

> 刻画疾病从未病态到显性病变的动态演化过程，学习跨时间、跨器官、跨场景的健康状态转迁规律，构建面向疾病进程的健康基础模型与世界模型。

### 应用层：临床智能

Focus on:

- 如何更早、更精准地干预
- 反事实推演
- 个体治疗效应
- 精准干预
- 主动防控
- 临床决策支持
- 多中心验证
- 长期临床检验

Suggested short website phrasing:

> 面向真实临床场景开展反事实推演与个体治疗效应评估，推动人工智能从风险预测走向精准干预与主动防控，并通过多中心真实世界数据与长期随访验证临床价值。

## 4.3 Chinese homepage mission

Use concise wording based on the scientific framework above.

Recommended Chinese mission:

> **我们研究疾病为何发生、如何演化，以及如何更早、更精准地干预。**

Supporting line:

> 围绕未病态与疾病动态转迁，发展因果智能、健康基础模型与临床决策方法，推动人工智能从疾病预测走向机制理解、反事实推演与主动干预。

Do not make the Chinese homepage sound like a literal translation of the English homepage.

---

# 5. SITE INFORMATION ARCHITECTURE

Top navigation:

```text
ZHANG LAB

Research
People
Publications
News
Join

EN | 中文
```

Chinese navigation:

```text
ZHANG LAB

研究方向
团队成员
论文成果
最新动态
加入我们

EN | 中文
```

The `ZHANG LAB` title links to the corresponding-language homepage.

Do not add unnecessary top-level pages.

---

# 6. HOMEPAGE CONTENT

## 6.1 English homepage

Use a restrained hero.

```text
ZHANG LAB
AI for Health
```

Mission:

> We develop AI to understand why disease emerges, how it evolves, and how we can intervene earlier and more effectively.

Then present three research directions using typography and whitespace, not large cards.

### 01 — Causal Intelligence

**Understanding why disease emerges.**

> We study causal principles underlying health, disease progression, and intervention.

### 02 — Disease Dynamics

**Understanding how disease evolves.**

> We develop AI models to characterize health-state transitions and the dynamic evolution of disease across time, organs, and environments.

### 03 — Clinical Intelligence

**Understanding how we can intervene.**

> We translate AI into real-world healthcare for earlier detection, personalized intervention, and better clinical decisions.

## 6.2 Chinese homepage

```text
ZHANG LAB
AI for Health
```

Main mission:

> 我们研究疾病为何发生、如何演化，以及如何更早、更精准地干预。

Supporting line:

> 围绕未病态与疾病动态转迁，发展因果智能、健康基础模型与临床决策方法，推动人工智能从疾病预测走向机制理解、反事实推演与主动干预。

Then present:

### 01 — 因果智能

**理解疾病为何发生。**

> 研究健康稳态向疾病稳态转迁中的因果机制，发展因果结构发现、因果表征与弱信号识别方法。

### 02 — 疾病动态演化

**刻画疾病如何演化。**

> 学习跨时间、跨器官、跨场景的健康状态转迁规律，构建面向疾病进程的健康基础模型与世界模型。

### 03 — 临床智能

**探索如何更早、更精准地干预。**

> 通过反事实推演与个体治疗效应评估，推动人工智能从风险预测走向精准干预与主动防控。

---

# 7. RESEARCH PAGE

The Research page should be organized by long-term scientific questions, not by individual grants.

## English structure

### Causal Intelligence

Scientific question:

> Why does disease emerge?

Possible topics:

- causal inference
- causal discovery
- causal representation learning
- disease transition mechanisms
- weak-signal identification
- robust and transportable clinical AI

### Disease Dynamics

Scientific question:

> How does disease evolve?

Possible topics:

- health-state transitions
- disease trajectories
- multimodal longitudinal learning
- multi-organ modeling
- medical world models
- health foundation models
- digital twins
- hospital-to-home continuous modeling

Important: **Medical World Models** is a method under **Disease Dynamics**, not a peer-level research direction.

### Clinical Intelligence

Scientific question:

> How should we intervene?

Possible topics:

- counterfactual inference
- individualized treatment effects
- virtual randomized trials
- precision intervention
- decision support
- real-world validation
- multicenter clinical evaluation
- longitudinal follow-up

## Chinese structure

### 因果智能

核心科学问题：

> 疾病为何发生？

Use concise grant-style language around:

- 未病态可计算失稳机制
- 因果弱信号识别
- 因果结构发现
- 跨模态因果表征
- 稳健因果泛化

### 疾病动态演化

核心科学问题：

> 疾病如何演化？

Use concise grant-style language around:

- 健康状态转迁
- 时空风险演化
- 稀有临界状态学习
- 多器官协同风险表征
- 医院—居家连续风险建模
- 泛血管健康基础模型
- 医疗世界模型

### 临床智能

核心科学问题：

> 如何实现更早、更精准的干预？

Use concise grant-style language around:

- 虚拟随机对照试验
- 数字孪生反事实推理
- 个体治疗效应评估
- 个体潜在获益
- 精准决策
- 主动干预
- 多中心真实场景验证
- 长期临床检验

---

# 8. MARKDOWN-DRIVEN CONTENT

All frequently updated content must be editable in Markdown.

Use Jekyll Collections for:

```text
_people/
_publications/
_news/
```

Do not hardcode individual people, papers, or news items into HTML templates.

## 8.1 People

Example:

```yaml
---
name: "Student Name"
name_zh: "学生姓名"
role: "PhD Student"
role_zh: "博士研究生"
research: "Causal AI and Medical Imaging"
research_zh: "因果智能与医学影像"
photo: "/assets/images/people/student-name.jpg"
order: 10
---
```

## 8.2 Publications

Example:

```yaml
---
title: "Paper title"
title_zh: ""
authors: "Wenhao Zhang, ..."
venue: "npj Digital Medicine"
year: 2026
paper_url: ""
code_url: ""
category: "Causal Intelligence"
category_zh: "因果智能"
featured: true
---
```

Do not translate official paper titles unless a Chinese title is explicitly provided.

## 8.3 News

Example:

```yaml
---
date: 2026-09-01
title: "Our new paper was accepted by ..."
title_zh: "我们的最新工作被……接收"
---
```

Create reusable includes:

```text
_includes/person.html
_includes/publication.html
_includes/news-item.html
```

Templates must display the appropriate language fields depending on the current page language.

---

# 9. RECOMMENDED PROJECT STRUCTURE

Create a simple structure similar to:

```text
zhang-lab-site/
├── Gemfile
├── _config.yml
├── README.md
├── .gitignore
│
├── index.md
├── research.md
├── people.md
├── publications.md
├── news.md
├── join.md
│
├── zh/
│   ├── index.md
│   ├── research.md
│   ├── people.md
│   ├── publications.md
│   ├── news.md
│   └── join.md
│
├── _layouts/
│   ├── default.html
│   └── page.html
│
├── _includes/
│   ├── header.html
│   ├── footer.html
│   ├── language-switch.html
│   ├── person.html
│   ├── publication.html
│   └── news-item.html
│
├── _people/
├── _publications/
├── _news/
│
├── assets/
│   ├── css/
│   │   └── main.css
│   └── images/
│       └── people/
│
├── deploy/
│   ├── README.md
│   └── nginx.conf.example
│
├── artifacts/
├── vendor/
├── .bundle/
└── _site/
```

All of the above must remain inside the workspace root.

---

# 10. IMPLEMENTATION PHASES

Work incrementally.

At the end of every phase:

1. summarize what changed
2. list files created or modified
3. verify all paths are under the workspace root
4. stop before doing unrelated work

## PHASE 0 — Workspace safety

Create:

```text
~/Desktop/zhang-lab-site/
```

Enter it and verify the absolute path with `pwd`.

Create only:

```text
README.md
.gitignore
```

In `README.md`, document:

> All project files must remain inside this directory.

In `.gitignore` include at least:

```text
_site/
.jekyll-cache/
.jekyll-metadata
vendor/
.bundle/
```

Stop.

---

## PHASE 1 — Initialize Jekyll

Create a minimal Jekyll website manually.

Do not use a third-party Jekyll theme.

Create:

```text
Gemfile
_config.yml
index.md
_layouts/default.html
_layouts/page.html
_includes/header.html
_includes/footer.html
assets/css/main.css
```

Configure Bundler locally.

Attempt:

```bash
bundle exec jekyll build
```

If the required runtime is unavailable, stop and report it rather than modifying the system.

Stop after a successful minimal build.

---

## PHASE 2 — Bilingual architecture

Create English pages:

```text
index.md
research.md
people.md
publications.md
news.md
join.md
```

Create matching Chinese pages:

```text
zh/index.md
zh/research.md
zh/people.md
zh/publications.md
zh/news.md
zh/join.md
```

Add bilingual front matter fields such as:

```yaml
lang: en
lang_alt_url: /zh/research/
```

and:

```yaml
lang: zh
lang_alt_url: /research/
```

Create the top-right language switch.

Verify that every English page links to the corresponding Chinese page and vice versa.

Stop.

---

## PHASE 3 — Homepage

Implement the English and Chinese homepage copy defined in this instruction file.

Use typography and whitespace rather than cards.

Do not use icons.

Do not use background images.

Do not use gradients.

Do not use animations.

Stop after both homepages render correctly.

---

## PHASE 4 — Research pages

Implement the three long-term research directions in both languages.

English:

```text
Causal Intelligence
Disease Dynamics
Clinical Intelligence
```

Chinese:

```text
因果智能
疾病动态演化
临床智能
```

Use the fund-style Chinese scientific language defined in this document.

Keep text concise.

Do not paste long grant paragraphs into the website.

Stop.

---

## PHASE 5 — Jekyll collections

Configure:

```text
_people
_publications
_news
```

Create reusable Liquid includes.

Create several placeholder Markdown entries.

All frequently edited content must be Markdown-driven.

Stop.

---

## PHASE 6 — Visual refinement

Apply the minimalist design system.

Requirements:

- responsive header
- desktop and mobile language switch
- restrained typography
- generous whitespace
- thin rules
- readable line length
- no visual clutter
- no unnecessary JavaScript

The language switch must remain clearly accessible at the upper-right area of the header on desktop.

On mobile, preserve access to the language switch without hiding it behind a complicated UI.

Stop.

---

## PHASE 7 — Static production build

Do NOT modify Nginx itself.

Do NOT access `/etc/nginx`.

Do NOT access `/var/www`.

Do NOT deploy remotely.

Run:

```bash
bundle exec jekyll build
```

Verify the production site under:

```text
_site/
```

Check:

- English pages work
- Chinese pages work
- language switches work
- internal links work
- asset paths are correct
- no localhost URLs remain
- no development-only references remain
- the site runs as static HTML
- no server-side runtime is required after build

Create:

```text
deploy/README.md
deploy/nginx.conf.example
```

The Nginx file is documentation only.

Do not copy it outside the project.

Create:

```text
artifacts/zhang-lab-site.tar.gz
```

containing the final static site from `_site/`.

Everything must remain under the project root.

Stop.

---

## PHASE 8 — Final audit

Do not change the design in this phase.

Audit:

1. Confirm the absolute project root.
2. Confirm every project file created or modified is under `~/Desktop/zhang-lab-site/`.
3. Confirm no file outside that root was modified.
4. Confirm no `sudo` command was used.
5. Confirm no system configuration was changed.
6. Confirm no global Ruby gems were installed.
7. Confirm Jekyll builds successfully.
8. Confirm `_site/` contains static HTML suitable for Nginx.
9. Confirm English and Chinese pages both exist.
10. Confirm the top-right language switch works.
11. Confirm People, Publications, and News are Markdown-driven.
12. Provide a concise project tree.
13. Provide the exact local build command.
14. Provide the exact local preview command.

Do not deploy anything.

Stop after the audit.

---

# 11. LOCAL COMMANDS

Expected local preview workflow:

```bash
cd ~/Desktop/zhang-lab-site
bundle exec jekyll serve
```

Expected production build:

```bash
cd ~/Desktop/zhang-lab-site
bundle exec jekyll build
```

Generated static website:

```text
~/Desktop/zhang-lab-site/_site/
```

Deployment model:

```text
Markdown
   ↓
Jekyll
   ↓
_site/
   ↓
Static HTML / CSS / images
   ↓
Nginx
```

Codex's responsibility ends at producing a correct `_site/` and deployment documentation inside the Desktop project workspace.

It must not copy files into the real Nginx web root and must not modify the live server configuration.
