# COPASI Website

This repository is the source for the [COPASI Website](www.copasi.org). You can edit the pages directly in this github repository.

Each page is located in its own directory which contains the `index.html` file and supporting files like attachments or images. The `index.html` file contains the html content plus the Front Matter. The Front Matter provides information for the [jekyll](http://jekyllrb.com/) page generator, which is triggered on any commit to the master branch of this repository. It is possible to replace the `index.html` file with an `index.md` file which uses [Markdown](http://daringfireball.net/projects/markdown/syntax) instead of html.

You can also clone:  
&nbsp;&nbsp;&nbsp;&nbsp;`git clone git@github.com:copasi/copasi.github.io.git`  
this repository and edit and create pages in your local computer. In order to preview the pages you need to [install jekyll](https://help.github.com/articles/using-jekyll-with-pages/). To create the pages an preview them on your local machine execute:  
&nbsp;&nbsp;&nbsp;&nbsp;`bundle exec jekyll serve`  
You publish your changes by commiting and pushing them to the repository

## Front Matter
This COPASI Website makes use of the following values in the Front Matter
<pre>
layout:    default | structure | post
title:     The title of the page
section:   The menu section which shall be higlighted
structure: The structure to which the page belongs (optional)
</pre>
