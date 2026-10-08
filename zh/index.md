---
layout: default
title: "张文豪"
lang: zh
permalink: /zh/
lang_alt_url: /
---

<section class="profile-layout" aria-labelledby="profile-name-zh">
  <div class="portrait-column">
    <img class="portrait-photo" src="{{ '/assets/images/wenhao-zhang.jpg' | relative_url }}" alt="张文豪肖像" width="1067" height="1200">
    <nav class="social-links" aria-label="学术与社交媒体主页">
      <a href="https://scholar.google.com/citations?user=BE7vPzEAAAAJ&hl=en" target="_blank" rel="noopener noreferrer">Scholar</a>
      <a href="https://github.com/wenhaoz-fengcai" target="_blank" rel="noopener noreferrer">GitHub</a>
      <a href="https://www.linkedin.com/in/wenhaozhangcsmc/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
      <a href="https://x.com/Wenhao_Zhang_X" target="_blank" rel="noopener noreferrer">X</a>
      <a href="mailto:zhang.wenhao@sjtu.edu.cn">zhang.wenhao@sjtu.edu.cn</a>
    </nav>
  </div>
  <div class="profile-copy">
    <h1 id="profile-name-zh" class="visually-hidden">张文豪</h1>
    <p>我是上海交通大学自动化与感知学院长聘教轨助理教授。我的研究致力于发展能够增进我们对人类健康与疾病内在机制理解的人工智能，长期目标是推动医学走向预测、预防与个体化。围绕这一目标，我研究以因果推理和真实世界临床证据为基础的健康基础模型与医学世界模型。我于2023年获得加州大学洛杉矶分校计算机科学博士学位，随后在西达赛奈医学中心 Slomka 团队完成博士后训练。我的研究曾获 Barry L. Zaret 青年研究者奖和多项最佳论文奖，并入选上海白玉兰人才计划。</p>
  </div>
</section>

<section class="home-panel news-panel" aria-labelledby="home-news-zh">
  <h2 id="home-news-zh">动态</h2>
  <div class="home-news-list">
    {% assign news_items = site.news | sort: "date" | reverse %}
    {% for item in news_items %}
      <p><time datetime="{{ item.date | date_to_xmlschema }}">{% if item.date_label_zh %}{{ item.date_label_zh }}{% elsif item.date_label %}{{ item.date_label }}{% else %}{{ item.date | date: "%Y年%-m月" }}{% endif %}</time>：{% if item.link_url and item.link_title %}{{ item.link_prefix_zh }}<a href="{{ item.link_url }}" target="_blank" rel="noopener noreferrer">{{ item.link_title }}</a>{% if item.highlight_text_zh %}{{ item.highlight_prefix_zh }}<span class="news-highlight">{{ item.highlight_text_zh }}</span>{% if item.journal %}{{ item.highlight_suffix_zh }}<em>{{ item.journal }}</em>{{ item.journal_suffix_zh }}{% else %}{{ item.highlight_suffix_zh }}{% endif %}{% elsif item.journal %}{{ item.journal_prefix_zh }}<em>{{ item.journal }}</em>{{ item.journal_suffix_zh }}{% else %}{{ item.link_suffix_zh }}{% endif %}{% elsif item.highlight_text_zh %}{{ item.highlight_prefix_zh }}<span class="news-highlight">{{ item.highlight_text_zh }}</span>{% if item.journal %}{{ item.highlight_suffix_zh }}<em>{{ item.journal }}</em>{{ item.journal_suffix_zh }}{% else %}{{ item.highlight_suffix_zh }}{% endif %}{% elsif item.journal %}{{ item.journal_prefix_zh }}<em>{{ item.journal }}</em>{{ item.journal_suffix_zh }}{% else %}{{ item.title_zh }}{% endif %}</p>
    {% endfor %}
  </div>
</section>
