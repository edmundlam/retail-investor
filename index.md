---
layout: home
---
This website is an archive of the content previously available on the now-defunct Retail Investor dot Org website. 
The original site provided valuable financial advice and educational content, and our mission is to preserve and continue sharing this information.

## Investing Basics
{% for page in site.basics %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

{% comment %}
  TODO: Move sections out of this comment block when adding content to that collection
  Each section should be moved above this comment block

## Stock Picking
{% for page in site.stock_picking %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

## The Cash Flow Debate
{% for page in site.cash_flow %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

## Retirement Issues
{% for page in site.retirement %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

## Misc. Topics
{% for page in site.misc %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}
{% endcomment %}
