
## MANRRS Outreach ##
CSCE 431 Group 500-12 Project

## Introduction ##

MANRRS outreach is an application that is created for MANRRS organization. The goal of this application is for the admins to be able to send messages to every member in the organization. This application uses a text messaging system to send messages. When a new user tries to register, it will ask for a secret key that only the admins know to ensure that only the admins in the organization can register. The user can either manually type a number of a member or upload an excel file containing multiple numbers to upload numbers of multiple people at once. 
## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Python- 3.14


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/MANRRS/MANRRS.git`


## Tests ##

Any other details for maintaince and checking:
```bash
rspec . #run tests
rubocop #check code style
brakeman #static analysis
python3 send_text.py test #test the python code 
```
Whenever new code is pushed, it will be automatically updated on heroku.

## Execute Code ##
Run the following commands in windows Powershell or the terminal for Linux and Mac
```bash
cd csce431
cd messages_app
docker run --rm -it --volume "$(pwd):/csce431/messages_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest
cd csce431
cd messages_app
```
How to execute our code: 
    
bundle install  

```bash
rails db:create
rails db:migrate
```
Run the app
```bash
rails server --binding=0.0.0.0
```
The application can be seen using a browser and navigating to http://localhost:3000/

## Environment Variables/Files ##

```bash
export RAILS_ENV=production
export DATABASE_USER=test_app 
export DATABASE_PASSWORD=test_password
```
## Deployment ##


How to deploy code in Heroku:

1) Install git and the heroku cli

2) Fork the project repository (https://github.com/MANRRS/MANRRS) into your own GitHub account.

3) Make sure to connect the github account to the heroku account.

4) The heroku create CLI command creates a new empty application on Heroku, along with an associated empty Git repository.

5) Go to the dashboard and click the New button and create a pipeline.

6) Create a new app under production and deploy from the main branch from github.

7) Make sure to configure all the environment variables above and the website can can accessed through the heroku link.


## CI/CD ##

CI/CD process: 
    There is a file called .github/workflows.yml which is a like a shell script that runs all our tasks automatically whenever someone pushes to the repository. 
    Everytime we pushed code to github repository, it automatically deployed to heroku before heroku was hacked.

https://github.com/MANRRS/MANRRS/actions

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.

## Extra Helps ##
Contact  paulinewade@tamu.edu for any help and additional information if needed.



