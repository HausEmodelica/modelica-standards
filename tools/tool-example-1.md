---
title: Tool Example 1
layout: default-content
url: tool-example-1
parent: tools
order: 1
---

### Subheadline

{% intro {"text":"Normaler Text, gefolgt von einem :", "link":"tool-example-2", "linktitle":"Link zur zweiten Tools Subpage"} %}
<br /><br />

{% intro {"linktitle":"Dieser Inhalt wird nicht dargestellt, weil kein Text angegeben wurde"} %}

{% intro {"text":"Hier geht es zur {{ page.title}} - Elternseite", "link":"../{{ page.parent }}", "linktitle":"Dieser Link generiert sich aus dynamischen Content, genau wie dieser Linktext und diese Seite hat das Layout: {{ page.layout }}"} %}