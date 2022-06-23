# Static Site Lesson

A static site is perfect way to learn new ways that we can use CI to deploy things.

We are going to tak the case in which we have a main website that we want to deploy to something that is inexpensive and globally accessible.

s3 is a cloud storage service that is a great way to store static files. 

We will be using this as our storage service and place where we will store our static files.

# Getting Started

Before taking this lesson, please be sure you have the following installed:

    * [AWS CLI](https://aws.amazon.com/cli/)
    * [Git](https://git-scm.com/)
    * [Node.js](https://nodejs.org/)
    * [npm](https://www.npmjs.com/)

Our site is a React web app which is a modern way to build web applications.

React makes it easier for develoeprs to build web applications by allowing them to break the application down into these parts called components. Each of these components changes independently and can be used to build up a complex application. This allows a lot of the application logic to be on the client side and not on the server side. 

We are going to take this React app and deploy it to a static website


# Auth to AWS 

To authenticate and connect Circle CI, you need to create ACCESS_KEY_ID and SECRET_ACCESS_KEY in your Circle CI project settings.

For more instructions, please see the [Circle CI documentation for Env Vars](https://circleci.com/docs/2.0/ecs-ecr#configure-circleci-environment-variables).

It is recommended that you set these environment variables at the organizational settings level.

It is located on the left hand side of the Circle CI page.

Within the organization context, create a context. This is a "group" you can use to group your projects.

The name of this context should be something you can add to each circle-ci file.

This will allow Circle CI to add this set of environment variabls or `context` to each of the projects.

Once you add those environment variables, you can use the `context` command to switch to that context.

Within the circle-ci file, in each job within the workflow that requires this context, add the `context` command.

The below example allows the `build` job to use the `cloud-hippie-global` context.


```yml
workflows:
  # push workflow will be triggered when a new pull request is created
  build_and_test_branch:
    jobs:
      - build:
          context: cloud-hippie-global
```



# Deploying to a Static Website

Fork this repo and look at `tools/deploy.sh`.

There is some pseudo-code in there that will help you deploy your app to a static website.

You will know you have completed the lesson when you can go to your publically available s3 bucket and see your static files.



