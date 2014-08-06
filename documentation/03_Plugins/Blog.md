
#### A blog example can be found [here][BLOG]

##Quick start

To create a blog, start with

    cd ./path/to/your/blog
    skf --init
    $EDITOR .skfrc

This will start a new website and open `.skfrc` with your default editor. 
You should make any changes you might like. 

Plus, you must change the `plugin` line to this:

    export plugin='markdown_blog'

Save and close your editor. And, 

    mkdir ./posts

In the `./posts` directory, you will put files named in the following format:

    %Y-%m-%d-a-long-title.md

For instance, today, is Sunday August 11 2013

So, If I blog about the weather, my file should be named `2013-08-11-nice-weather-today.md`

The content of this file is also important. 
Any blog post should start with the title line, <b>and a blank line.</b>

For instance:

<pre><code>title:Nice weather

Today, I was looking out the window... 
Etc...</code></pre>

You can put anything in the "header" of the file, it will be ignored. 
Unless there is a blank line, the document is considered empty. In the 
future, this plugin will support these entries in the blog header: 

<pre><code>title:Title
author:Author
tags:a,comma,separated,list

The content of the blog post
</code></pre>

[BLOG]:/News/ "skf blog example"
