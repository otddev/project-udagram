#!/usr/bin/env bash
set -x
set -e

AWS_CONFIG_FILE=$HOME/.aws/config

mkdir $HOME/.aws
touch $AWS_CONFIG_FILE
chmod 600 $AWS_CONFIG_FILE

echo "[profile eb-cli]"                              > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID"         >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE

eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET=$AWS_SECRET_ACCESS_KEY AWS_BUCKET=$AWS_S3_MEDIA_BUCKET AWS_REGION=$AWS_REGION JWT_SECRET=$JWT_SECRET PORT=$SERVICE_PORT URL=$URL POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_PORT=$POSTGRES_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME -e $AWS_EB_ENV
