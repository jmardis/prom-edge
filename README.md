# PROM-EDGE Stack

## Purpose
----

This repo contains the Prom-Edge stack that puts/gets 911 JSON event files and saves it into/from a Mongo DB. Using serverless style functions to provide horizontal autoscaling to meet any demand from incoming events.

Explination for design: 
- Serverless functions provide major factors for automated CI/CD stacks: 1. Ease of development, 2. Production grade scaling.

## Tech Info
----

Layer 0 (infrastructure): AWS EC2 instance with Centos 7.x
Layer 1 (platform): Docker/Kubernetes/Kind/Kubeless
Layer 2 (app): Python functions to read/write to mongo.

### Folder Layout
----

- 0-setup: contains files for setting up Layer 1 of the architecture.
- 1-deploy: contains files for deploy functions and backend apps.
- 2-test: scripts and files for testing functionality

Setup
----

Pre-reqs:
- Access to AWS with free tier support. 
- Created AWS Centos ec2 instance
- Installed Docker
- Download kind cli tool: https://kind.sigs.k8s.io/docs/user/quick-start/
- SSH'ed into free tier EC2 instance
- Git tool installed
- Checked out code and changed directory to 0-setup


1. Deploy kind cluster:
```
kind create cluster --config kind.yaml
```
2. Run setup script for kubeless
```
./setup_kubeless.sh
```

## Deploy
Pre-reqs:
- Change directory to 1-deploy

1. Deploy mongo
```
kubectl apply -f 0-mongo.yml
```

2. Deploy functions
```
./1-deploy.sh
```

# UNFINISHED
- Functions aren't complete for get/put into Mongo DB
- Horizontal auto scaler for production env
- Test scripts (blocked due to functions not complete)

## SCREENSHOTS:

![image](https://user-images.githubusercontent.com/12747079/90995929-640cd980-e58b-11ea-8e16-38686d0f891b.png)
![image](https://user-images.githubusercontent.com/12747079/90996037-a2a29400-e58b-11ea-8449-8982f8d6fd89.png)
![image](https://user-images.githubusercontent.com/12747079/90996106-c960ca80-e58b-11ea-9932-66db64dfd0a6.png)
