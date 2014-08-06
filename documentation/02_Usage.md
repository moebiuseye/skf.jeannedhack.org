
###Quick start

<pre><code class="bash">mkdir ~/website
cd ~/website
skf --init
# Here, you will be asked if you want to copy the default style. 
# press 'y' and enter 
skf -r -w ~/website ~/website.static</code></pre>

Yay! You're set! You can begin writing stuff. 

###More details

First, let's see what `skf --help` says:

<pre><code class="bash">skf [-f] [-r|--recursive] (--watch|-w) SRC_DIR DST_DIR
skf [-f] [-r|--recursive] (--generate|-g) SRC_DIR DST_DIR
skf (-i|--init)
skf (-h|--help)
Warning: DST_DIR should be the last argument.</code></pre>

#### Choose your mode

You can see here that there are two ways of using skf: 

* in "watch" mode. That will make skf wait for changes. 
* in "generate" mode. That will make skf generate the website just once. 

One and only one of these arguments is required. 

Be aware that the "watch" mode will make skf regenerate a whole website 
each time you even `touch` a file in `SRC_DIR`. This can be a (very 
moderate) resource hog. 

Regardless of the mode you have chosen, you need to specify an 
existing source directory (SRC_DIR) 

#### Recursive? 

if you use the `--recursive` or `-r` switch, skf will assume that you have 
other websites in subfolders of `SRC_DIR`. These websites are detected if 
there is a `.skfrc` in the folder. 

*WARNING* : If `SRC_DIR` = `~/.skf/`, and you have a `.skfrc` file in 
`~/.skf/` and in `~/.skf/subfolder/subfolder/` , the latter folder will be ignored! 
If you want a "/" in your website name, *don't*. 


#### Force ?

It's quite simple: sometimes there is a conflict. The program will ask you 
to use the `--force` or `-f` switch if you really want the conflict to be 
ignored. For now, this is only to be used when `SRC_DIR` equals `DST_DIR`. 

#### Website Configuration files

Here is a sample configuration file. There might be more in the future. 
And, also -- for now -- you absolutely positively need to use `export` and 
write in proper bash! 

The basic idea is that each variable also applies to the subfolders. 
So, if you don't reset the `$title` variable, every subfolder 
will have "StatiKiss framework project" as a title. 

the $base_url should be set only once. 

<pre><code class='bash'># Basics
export title="Statikiss framework project"
export subtitle="It's static and suckless"

# Technical
export plugin="plain_markdown"
export style_inherit="true"

export base_url="http://skf.jeannedhack.org/"
</code></pre>

Here's an explanation for each variable:

* title: The title
* subtitle: The subtitle
* email: Not used yet. 
* plugin: There are a number of available plugins in the plugins directory. 
    These plugins are documented in the Plugins section of this page. 
    (in the left) 

There will be a documentation for creating plugins. 
