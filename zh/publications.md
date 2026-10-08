---
title: "论文"
lang: zh
permalink: /zh/publications/
lang_alt_url: /publications/
---

{% assign publication_years = site.publications | map: "year" | uniq | sort | reverse %}

<nav class="publication-year-nav" aria-label="按年份浏览论文">
  {% for year in publication_years %}
    <a href="#year-{{ year }}">{{ year }}</a>
  {% endfor %}
</nav>

<div class="publication-years">
  {% for year in publication_years %}
    <section class="publication-year-section" id="year-{{ year }}" aria-labelledby="year-{{ year }}-heading">
      <h2 id="year-{{ year }}-heading">{{ year }}</h2>
      <div class="publication-list">
        {% assign year_publications = site.publications | where: "year", year | sort: "date" | reverse %}
        {% for publication in year_publications %}
          {% include publication.html publication=publication %}
        {% endfor %}
      </div>
    </section>
  {% endfor %}
</div>
