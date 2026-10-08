---
title: "教学"
lang: zh
permalink: /zh/teachings/
lang_alt_url: /teachings/
---

<div class="teaching-list">
  {% assign teaching_items = site.teaching | sort: "order" %}
  {% for item in teaching_items %}
    {% include teaching-item.html item=item %}
  {% endfor %}
</div>
