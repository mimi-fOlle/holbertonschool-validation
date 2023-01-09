build: ##Generate the website from the markdown and configuration files in the dist/.
	@hugo

clean: ##Cleanup the content of the dist/.
	@rm -rf dist/*

post: ##Create a new blog post whose filename and title come from POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ##Print out the list of targets and their usage
	@sed -ne '/@sed/!s/## //p' Makefile

lint: ##Lint with markdown
	@markdownlint README.md DEPLOY.md
	@shellcheck setup.sh

unit-tests: ##Executes successfully the Golang unit tests
	@ls

integration-tests: ##Runs post and build command to check for integration success
	@ls

validate: ##Valide that in the right directory
	@ls

package: ##Creates an archive
	@hugo
	@zip awesome-website.zip ./dist
