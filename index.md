---
layout: home
---
This website is an archive of the content previously available on the now-defunct Retail Investor dot Org website. The original site provided valuable financial advice and educational content, and our mission is to preserve and continue sharing this information.

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


## Note from the curator:

All of the original authors content was created before 2022, and therefore before the advent of widespread AI generated
content.

I do not necessarily agree or follow with any or all the opinions expressed in the original content, however I find the 
content to be interesting, educational, and often entertaining writing. As the original author said: 

> Don't regurgitate other people's opinions because 'they' say it. Think it through for yourself and make your own decision.
> You won't get any infection diseases from opening your mind. There is no subversive brain-washing here.
> 
> ~ The author of Retail Investor, 2010-2022