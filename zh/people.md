---
title: "成员"
intro: "目前指导的学生及曾指导的学生。"
lang: zh
permalink: /zh/people/
lang_alt_url: /people/
---

{% assign phd_students = site.students | where: "group", "phd" | sort: "order" %}
{% assign masters_students = site.students | where: "group", "masters" | sort: "order" %}
{% assign undergraduate_students = site.students | where: "group", "undergraduate" | sort: "order" %}
{% assign alumni = site.students | where: "group", "alumni" | sort: "order" %}

<div class="people-groups">
  <section class="people-group">
    <h2>博士生</h2>
    <div class="student-list">
      {% for student in phd_students %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>

  <section class="people-group">
    <h2>硕士生</h2>
    <div class="student-list">
      {% for student in masters_students %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>

  <section class="people-group">
    <h2>本科生</h2>
    <div class="student-list">
      {% for student in undergraduate_students %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>

  <section class="people-group">
    <h2>往届成员</h2>
    <div class="student-list">
      {% for student in alumni %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>
</div>
