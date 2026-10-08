---
title: "Teachings"
lang: en
permalink: /teachings/
lang_alt_url: /zh/teachings/
---

<div class="teaching-list">
  {% assign teaching_items = site.teaching | sort: "order" %}
  {% for item in teaching_items %}
    {% include teaching-item.html item=item %}
  {% endfor %}
</div>
