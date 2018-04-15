# Docker Compose Example 

This is not an example of how to use compose, but to show a weird difference
between versions.

Using a Dockerfile in a different place than the build context, 1.18.0 works
fine, but 1.20.1 gives an error.

# What should happen:

This is the file system tree for this repo:
```
.
├── 1.18.0.log
├── 1.20.1.log
├── compose
│   ├── docker-compose.yml
│   ├── dockerfile
│   │   └── Dockerfile
│   └── run.sh
├── context
│   ├── app.py
│   └── requirements.txt
├── readme.md
├── runtest.sh
└── tree.txt
```

3 directories, 10 files

The `compose/run.sh` script exports environment variables to substitute the
build context and Dockerfile path in the `docker-compose.yml`. 

The context and Dockerfile are in different places, so that the docker build 
files can be inserted into an existing project without cluttering its repo. 
Or they can be used to build a project while being separate from its repo.

# How to test:

1. Clone this repo to a machine running docker-compose.
1. Run `runtest.sh` at the command prompt.
