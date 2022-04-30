## Introduction ##

Application Description

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/MANRRS/MANRRS.git`


## Tests ##

Any other details for maintaince and checking:
    Need to run rubocop in order to check the style.
    Need to brakeman for static analysis
    Whenever new code is pushed, it will be automatically updated on heroku.
    

## Execute Code ##

How to execute our code: 
    
    bundle install  
    rails db:create
    rails db:migrate

    Run the app
    rails server --binding=0.0.0.0

The application can be seen using a browser and navigating to http://localhost:3000/

## Environmental Variables/Files ##

** Add instructions/description if your application requires it.

## Deployment ##

** Add instructions about how to deploy to Heroku
How to deploy code in Heroku:
    1) Install git and the heroku cli
    2) Create a herokue remote
    3) The heroku create CLI command creates a new empty application on Heroku, along with an associated empty Git re pository. 
    4) Deploy code. To deploy your app to Heroku, use the git push command to push the code from your local repository’s main branch to your heroku remote. For example:


## CI/CD ##

CI/CD process: 
    File called workflows.yml which is a shell script,runs all our tasks. We can do the testing by running rails rspec.
    Everytime we would push code to github repository, it automatically deploy to heroku before heroku was hacked.

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.


