build: ##Generate the website from the markdown and configuration files in the dist/.
	@hugo

clean: ##Cleanup the content of the dist/.
	@rm -rf dist/*

post: ##Create a new blog post whose filename and title come from POST_TITLE and POST_NAME
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "false"/' content/posts/$(POST_NAME).md

help: ##Print out the list of targets and their usage
	@echo "Usage: make <command>"
	@echo "-----"
	@fgrep -h "##" Makefile | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | head -9

lint: ##Lint with markdown
	@markdownlint README.md DEPLOY.md

unit-tests: ##Runs different makefile recipes

integration-tests: ##Runs post and build command to check for integration success

validate: ##Valide that in the right directory

package: ##Creates an archive
	@hugo
	@zip awesome-website.zip ./dist
