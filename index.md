---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
This website is an archive of the content previously available on the now-defunct Retail Investor dot Org website. The original site provided valuable financial advice and educational content, and our mission is to preserve and continue sharing this information.

{% for page in site.basics %}
* [{{ page.title }}]({{site.baseurl}}{{page.url}})
{% endfor %}
