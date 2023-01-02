#Generate the website from the markdown and configuration files in the dist/.
build:
	@hugo --theme=ananke

#Cleanup the content of the dist/.
clean:
	@rm -r ./dist/*

#Create a new blog post whose filename and title come from POST_TITLE and POST_NAME
post:
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/g' content/posts/$(POST_NAME).md	
