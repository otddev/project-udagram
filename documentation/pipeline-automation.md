# Project Automated Pipeline Structure
#### Below are the requirements/dependencies for successful project deployment.

![Architecture](arch.png)

### Circle CI (Cont. Intergration)

The developers follow the below flow to deploy code changes.

- Make the modified changes in the source code and run their unit tests.
- After successful results update the GitHub repository to add the code changes.
- An PR/Code Update triggers the Circle CI pipeline workflow
- Circle CI reads the script located in `.circleci\config.yml` which provide Infrastructure and the order of steps to execute to load the code changes to production.

- Circle CI loads the new code into the respected locations.
  - API Service > AWS ELB
  - Web FrontEnd > AWS S3 BUCKET
- After successful status from the workflow the application with the updates changes is available for user access.


### API Services
#### Steps
- Go to udagram-api directory.
- Execute Command: `npm run build`
  - This command creates the distributable version fo the code.
  - The code is compressed into a `Archive.zip` file.
- Load `Archive.zip` into AWS ELB

### Web FrontEnd
#### Steps
- Go to udagram-frontend directory.
- Execute Command: `npm run build`
  - This command creates the distributable version fo the code.
- Load the build content into AWS S3 Bucket.
