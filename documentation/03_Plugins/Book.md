
Just as with any other plugin, you can use `skf --init` to get started. 

Again, you should set the plugin variable like so: 

    export plugin="markdown_book"

You still can have a `left.md` file. 

All you need to do is create .md files. For instance: 

* 00_title.md
* title.md

The result for these file, will be a link to 00_title.html and another 
to title.html in the destination directory. However, the links name will 
be `title` for both files. The numbers are meant so that you can sort 
chapters. 

For both of these files, the Subtitle will be "title". 
