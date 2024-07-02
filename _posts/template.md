title: "Title"
date: YYYY-MM-DD
tags: ["tag1", "tag2"]

Tags: {%for tag in tags %} {{tag}}{% if forloop.last != true %},{% endif %}{% endfor %}

# Heading

Content here.

{% include utterances.html %}
