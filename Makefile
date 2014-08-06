DESTINATION=/home/srv/skf/public_html

curdate=`date +"%Y-%m-%d"`

clean:
	rm -rf ../homeskf.static

once:clean
	skf -r -g ./ ../homeskf.static
	rsync -az ../homeskf.static/ $(DESTINATION)
	find $(DESTINATION) -not -user http -exec chown http {} \;
	find $(DESTINATION) -not -group http -exec chgrp http {} \;

watch:clean
	skf -r -w ./ $(DESTINATION)

blogpost:
	echo "taper le titre:"
	read title ;\
	blogfile="News/./posts/$(curdate)-$${title}.md" ;\
	$(EDITOR) "$${blogfile}.tmp" ;\
	read rep ;\
	[ "$${rep}" == "y" ] && mv "$${blogfile}.tmp" "$${blogfile}" 
