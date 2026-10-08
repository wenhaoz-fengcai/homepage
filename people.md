---
title: "People"
intro: "Students I currently advise and former students I have mentored."
lang: en
permalink: /people/
lang_alt_url: /zh/people/
---

{% assign phd_students = site.students | where: "group", "phd" | sort: "order" %}
{% assign masters_students = site.students | where: "group", "masters" | sort: "order" %}
{% assign undergraduate_students = site.students | where: "group", "undergraduate" | sort: "order" %}
{% assign alumni = site.students | where: "group", "alumni" | sort: "order" %}

<div class="people-groups">
  <section class="people-group">
    <h2>Ph.D. Students</h2>
    <div class="student-list">
      {% for student in phd_students %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>

  <section class="people-group">
    <h2>Master’s Students</h2>
    <div class="student-list">
      {% for student in masters_students %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>

  <section class="people-group">
    <h2>Undergraduate Students</h2>
    <div class="student-list">
      {% for student in undergraduate_students %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>

  <section class="people-group">
    <h2>Alumni</h2>
    <div class="student-list">
      {% for student in alumni %}{% include student.html student=student %}{% endfor %}
    </div>
  </section>
</div>
