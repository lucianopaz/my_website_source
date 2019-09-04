---
title: Hugo academic and Staticman v3
author: lucianopaz
date: 2019-09-04
caption: ""
image: "featured.jpg"
summary: ""
tags:
- hugo
- css
categories:
- Other
featured: false
draft: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  placement: 1
  caption: "Combination of the official logos of [hugo](https://gohugo.io/) and [staticman](https://staticman.net/)"
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []

# Set captions for image gallery.
# gallery_item:
#- album: gallery
#  caption: Default
#  image: theme-default.png
---

As some of you may have noticed, this website is built using [hugo](https://gohugo.io), and in particular I use the [academic theme](https://themes.gohugo.io/academic/) theme. I was drawn to hugo because of its compilation speed and the academic theme seemed to cover all the needs I thought my website would have.

What happened? I encountered the achiles heel of most static site generators: __comments__. The academic theme ships with some comment managing services which I did not want for my website. Looking for alternatives, I came across [Staticman](https://staticman.net) and thought that it would be great to use! The thing is that most of the documentation is old and outdated, and the posts that I could find explaining how to use staticman with hugo academic were old and didn't fully work. In the end, setting staticman comments up was hard, and I wanted to write down what I did so anyone else planning on using it on a hugo academic site, doesn't have to spend all the time I did.

