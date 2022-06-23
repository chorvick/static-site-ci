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


# Deploying to a Static Website

Fork this repo and look at `tools/deploy.sh`.

There is some pseudo-code in there that will help you deploy your app to a static website.

You will know you have completed the lesson when you can go to your publically available s3 bucket and see your static files.



