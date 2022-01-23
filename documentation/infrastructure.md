# Project Infrastructure
#### Below are the requirements/dependencies for successful project deployment.


### Diagram
![Infrastructure](udagram_infra.jpeg)

### Amazon Web Services (AWS)

#### Elastic Beanstalk (ELB)

The api services is loaded into ELB environment. This facilitates better resource consumption and project maintenance since the project will auto update when changes are detected in the code. (ex. Circle CI Pipeline Workflow)

URI: http://prod-udagram-env.eba-tqppbap2.us-east-1.elasticbeanstalk.com/

#### S3 Bucket (Web FrontEnd / Image Uploads)

The website/frontend is hosted on a publicly accessible S3 bucket.

URI: http://prod-udagram.s3-website-us-east-1.amazonaws.com

A second S3 bucket was created to manage image feed uploads.

BUCKET NAME: **media-udagram**

#### RDS Postgres
A RDS (Postgres) database is utilized for saving user and feed information.

URI: `postgresql://postgres:password@otd-udagram-dbservice.ch2cfuu6csiv.us-east-1.rds.amazonaws.com/udagram`
