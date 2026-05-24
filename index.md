---
layout: home
---

This website is an archive of the content previously available on the now-defunct retailinvestor dot org website which
existed between around 2010-2022. The original site provided valuable financial advice and educational content, and our 
mission is to preserve and continue sharing this information.

- [Intro and Site Objectives]({{ site.baseurl }}/intro/)
- [About]({{ site.baseurl }}/about/)

## Investing Basics
{% assign sorted_basics = site.basics | sort: 'order' %}
{% for page in sorted_basics %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

## Retirement Issues
{% assign sorted_retirement = site.retirement | sort: 'order' %}
{% for page in sorted_retirement %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

{% comment %}
  TODO: Move sections out of this comment block when adding content to that collection
  Each section should be moved above this comment block

## Stock Picking
{% assign sorted_stock_picking = site.stock_picking | sort: 'order' %}
{% for page in sorted_stock_picking %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}

## The Cash Flow Debate
{% assign sorted_cash_flow = site.cash_flow | sort: 'order' %}
{% for page in sorted_cash_flow %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}



## Misc. Topics
{% assign sorted_misc = site.misc | sort: 'order' %}
{% for page in sorted_misc %}
* [{{ page.short_title | default: page.title }}]({{ site.baseurl }}{{ page.url }})
{% endfor %}
{% endcomment %}
