build: ##Generate the website from the markdown and configuration files in the dist/.
	@hugo --theme=ananke

clean: ##Cleanup the content of the dist/.
	@rm -r dist/*

post: ##Create a new blog post whose filename and title come from POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ##Print out the list of targets and their usage
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sed -n 's/^\(.*\): \(.*\)##\(.*\)/\1:\3/p'
