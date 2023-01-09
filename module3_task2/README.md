# Continuous Integration / Continuous Deployment

## Prerequisites

-   Install Go-Hugo
-   Not allow to use Git submodules
-   The theme ananke is installed
-   Makefile present

## Lifecycle

A section added for task 2 to describe the different steps.

-   build: For generae the website
-   clean: Cleanup the content
-   post: Create a new blog post
-   help: Print out the list of targets' usage

## Workflow

-   Clone the repository
-   Position yourself in the correct directory and execute the command make help to validate that the Makefile is present and implements the help target.
-   Build Workflow

### This workflow must be triggered:

-   Each time there is new code pushed on your repository,
-   And once per day (whatever time you want).
