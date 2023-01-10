# DEPLOYMENT

## What is in the archive and how to unarchive it?

- In the `awesome-website.zip` archive you will encounter the `dist/` folder
- To unarchive it in your current directory use the command line: `unzip awesome-website.zip`

### What are the commands to start and stop the application?

- To generate (start) the go-hugo website run the command: `make build`
- To clean (stop) the go-hugo website run the command: `make clean`

### How to customize where the application logs are written?

Logs are created by the github actions and stored in the respective runner

### How to “quickly” verify that the application is running (healthcheck)?

- To veryfy is the go-hugo wesite is runnig correctly run the command: `hugo server`
- Check it out on local host `http://localhost:1313`

### Releases

New release is created with the awesome-website.zip archive,
pointing to the tag 1.0.0
