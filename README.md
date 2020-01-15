# go-rest-demo-project

### Why this project?
I am always asked to share the sample Go project that I worked on, along with the CV. Sometimes I am asked to share the link to my github account, so they can check my repos for sample projects.

However, most of my projects are bitbucket private repos. Also most of clients demand to sign NDA so I cannot share their code with third parties. Even if they haven't asked to do so, it's my moral responsibility to protect their assets and code.

This project is simple demonstration of "how I work with Golang" and should give general idea of my coding skills.

### What will it cover?
I will write a http server in this project and attach it to the mysql for CRUD operations.

At the initial moment I do not have idea what I am going to build, so this will be the simple project at first. But maybe over a period of time, I will add features to demonstrate other skills.

## Run
Before you run this web server, kindly check the .env file in this folder. Make sure that values of all environment variables are correct and relevant to the server where you will run the docker container.

#### To build the docker image, use below commands
```bash
make docker-build
```

#### To run the docker container, use below coomand
```bash
make docker-run
```

#### To stop the container from running use following command
```bash
make docker-stop
```

#### To delete the container use following command
```bash
make docker-rm
```