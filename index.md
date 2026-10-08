---
layout: default
title: "Wenhao Zhang"
lang: en
permalink: /
lang_alt_url: /zh/
---

<section class="profile-layout" aria-labelledby="profile-name">
  <div class="portrait-column">
    <img class="portrait-photo" src="{{ '/assets/images/wenhao-zhang.jpg' | relative_url }}" alt="Portrait of Wenhao Zhang" width="1067" height="1200">
    <nav class="social-links" aria-label="Academic and social profiles">
      <a href="https://scholar.google.com/citations?user=BE7vPzEAAAAJ&hl=en" target="_blank" rel="noopener noreferrer">Scholar</a>
      <a href="https://github.com/wenhaoz-fengcai" target="_blank" rel="noopener noreferrer">GitHub</a>
      <a href="https://www.linkedin.com/in/wenhaozhangcsmc/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
      <a href="https://x.com/Wenhao_Zhang_X" target="_blank" rel="noopener noreferrer">X</a>
      <a href="mailto:zhang.wenhao@sjtu.edu.cn">zhang.wenhao@sjtu.edu.cn</a>
    </nav>
  </div>
  <div class="profile-copy">
    <h1 id="profile-name" class="visually-hidden">Wenhao Zhang</h1>
    <p>I am a tenure-track Assistant Professor in the School of Automation and Intelligent Sensing at Shanghai Jiao Tong University. My research seeks to develop AI that advances our understanding of the mechanisms governing human health and disease, with the long-term goal of making medicine predictive, preventive, and personalized. Toward this goal, I develop health foundation models and medical world models grounded in causal reasoning and real-world clinical evidence. I received my Ph.D. in Computer Science from UCLA in 2023 and completed my postdoctoral training in the Slomka Lab at Cedars-Sinai Medical Center. My research has been recognized with the Barry L. Zaret Young Investigator Award and multiple best paper awards, and I was selected for the Shanghai Magnolia Talent Program.</p>
  </div>
</section>

<section class="home-panel news-panel" aria-labelledby="home-news">
  <h2 id="home-news">News</h2>
  <div class="home-news-list">
    {% assign news_items = site.news | sort: "date" | reverse %}
    {% for item in news_items %}
      <p><time datetime="{{ item.date | date_to_xmlschema }}">{% if item.date_label %}{{ item.date_label }}{% else %}{{ item.date | date: "%m/%Y" }}{% endif %}</time>: {% if item.link_url and item.link_title %}{{ item.link_prefix }}<a href="{{ item.link_url }}" target="_blank" rel="noopener noreferrer">{{ item.link_title }}</a>{% if item.highlight_text %}{{ item.highlight_prefix }}<span class="news-highlight">{{ item.highlight_text }}</span>{% if item.journal %}{{ item.highlight_suffix }}<em>{{ item.journal }}</em>{{ item.journal_suffix }}{% else %}{{ item.highlight_suffix }}{% endif %}{% elsif item.journal %}{{ item.journal_prefix }}<em>{{ item.journal }}</em>{{ item.journal_suffix }}{% else %}{{ item.link_suffix }}{% endif %}{% elsif item.highlight_text %}{{ item.highlight_prefix }}<span class="news-highlight">{{ item.highlight_text }}</span>{% if item.journal %}{{ item.highlight_suffix }}<em>{{ item.journal }}</em>{{ item.journal_suffix }}{% else %}{{ item.highlight_suffix }}{% endif %}{% elsif item.journal %}{{ item.journal_prefix }}<em>{{ item.journal }}</em>{{ item.journal_suffix }}{% else %}{{ item.title }}{% endif %}</p>
    {% endfor %}
  </div>
</section>
