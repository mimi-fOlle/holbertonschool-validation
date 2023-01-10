# Continuous Integration / Continuous Deployment

## Prerequisites

- Install Go-Hugo
- Not allow to use Git submodules
- The theme ananke is installed
- Makefile present

## Lifecycle

To execute the Makefile by using `make`.

- build: Generate website from markdown and config files in the directory `dist/`.
- clean: Cleanup the content of the directory `dist/`
- post: Create a new blog post from the env variables `POST_TITLE` and `POST_NAME`.
- help: Print out the list of targets' usage
- package: Compress archive `awesome-website.zip`
- unit-tests: Runs several make command, expected correct output.
- integration-tests: Runs post and build to check for proper integration of new posts.
- validate: Validate that in the correct folder

## Workflow

- Clone the repository
- Position yourself in the correct directory and execute the command
 `make help` to validate that the Makefile is present and
 implements the help target.
- Build Workflow
- Help Workflow

## Help Workflow

- In this directory, we're going to configure automatic actions
 to be performed when something happen to the repository.
- Using Github Actions to ensure CI/CL pipeline
 (build starts, TEST, BUILD, PUSH, DEPLOY)

### This workflow must be triggered

- Each time there is new code pushed on your repository,
- And once per day (whatever time you want).
- Always run the make target `package`
- Archive the generated package only on the principal branch
- Be enabled in GitHub Actions and must have been run successfully
