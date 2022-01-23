# Udacity Project: Udagram Deployment
Udacity Project: Udagram Deployment
contact: **gerardo@onetechdude.com**

<div id="top"></div>

## About Project

This is a alternate project to provide technics for automated application deployment to AWS via Circle CI.

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

The original code source for this project is located at: **https://github.com/udacity/nd0067-c4-deployment-process-project-starter**

For more information check the documentation at: **https://github.com/otddev/project-udagram/tree/main/documentation**

### Sample Deployment

Deployment Status: [![CircleCI](https://circleci.com/gh/otddev/project-udagram/tree/main.svg?style=svg)](https://circleci.com/gh/otddev/project-udagram/tree/main)

You can access deployed project for review at: **http://prod-udagram.s3-website-us-east-1.amazonaws.com/**
```json
If you do not want to register you can use the below test credentials.

email: test@test.com
password: Password00
```
(Note: This link will be removed by the end of January 2022)

## Getting Started

1. Clone this repo locally into the location of your choice.
1. Move the content of the udagram folder at the root of the repository as this will become the main content of the project.
1. Open a terminal and navigate to the root of the repo
1. Follow the instructions in the installation step

The project can run but is missing some information to connect to the database and storage service. These will be setup during the course of the project

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version
- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project
- AWS CLI v2, v1 can work but was not tested for this project
- A RDS database running Postgres.
- A S3 bucket for hosting the front-end web site.
- A S3 bucket for hosting uploaded pictures.
```

## Installation

### Provision the necessary AWS services needed for running the application:

- Udacity provided students a AWS account with a 75$ budget. This account is very limited and almost all students are not able to complete
project with the limited access it provides. I recommend for you to create a AWS account yourself which they provide you 12 months of free tier access. This will provide
all the resources you need for this project with no surprises. 
- A provisioned publicly accessible RDS database running Postgres. (Note: Use version 12.x, so you can utilize free tier version.)
- A provisioned s3 bucket for hosting the web front-end of udagram.
- A provisioned s3 bucket for image uploads from posts created in udagram (Note: If desired you can utilize same bucket created for front-end.)

### Enviroment Settings
Note: Create a .env file only for testing locally. For deployment you need to provide this variables via other services.

```
# Database Configuration
POSTGRES_USERNAME=dbadmin
POSTGRES_PASSWORD=Password00
POSTGRES_DB=udagram
POSTGRES_HOST=<********>
POSTGRES_PORT=5432

# AWS Cloud Setup
AWS_REGION=<********>
AWS_BUCKET=arn:aws:s3:::<********>
AWS_ACCESS_KEY_ID=<********>
AWS_SECRET=<********>/4FSTCJc6d3pTWA3mA5padlGX5kDUG

# Other Settings
PORT=3000
URL=<********>
JWT_SECRET=thebigsecret
```

### Scripts

````json
    "scripts": {
        "build": "cd udagram-api && npm run build && cd .. && cd udagram-frontend && npm run build && cd ..",
        "install": "cd udagram-api && npm install && cd .. && cd udagram-frontend && npm install && cd ..",
        "start-api": "cd udagram-api && npm run dev",
        "start-web": "cd udagram-frontend && npm run start"
    }
````

- **build**: Execute **npm run build** for both udagram-api and udagram-frontend.
- **install**: Execute **npm run install** for both udagram-api and udagram-frontend.
- **start-api**: Starts the udagram-api project for local testing.
- **start-web**: Starts the udagram-api project for local testing.

### Testing Locally

#### Before deployment of an code into your pipeline make sure that it works locatlly with no issues. (Testing is Key)

The udagram sample project only contains unit test for the front-end. Use the commands below to run your tests.
```
- `cd <project folder>/udagram-frontend`
- `npm run test`
- `npm run e2e`
```

## Contact
Antonio Garcia
Mail: gerardo@onetechdude.com

<p align="right">(<a href="#top">back to top</a>)</p>
