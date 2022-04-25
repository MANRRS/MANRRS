How to execute our code: 
    bundle install

    Instantiate the database:
    rails db:create
    rails db:migrate

    Run the app
    rails server --binding=0.0.0.0

How to deploy code in Heroku:
    1) Install git and the heroku cli
    2) Create a herokue remote
    3) The heroku create CLI command creates a new empty application on Heroku, along with an associated empty Git re pository. 
    4) Deploy code. To deploy your app to Heroku, use the git push command to push the code from your local repository’s main branch to your heroku remote. For example:

CI/CD process: 
    File called workflows.yml which is a shell script,runs all our tasks. We can do the testing by running rails rspec.
    Everytime we would push code to github repository, it automatically deploy to heroku before heroku was hacked.

Any other details for maintaince and checking:
    Need to run rubocop in order to check the style.
    Need to brakeman for static analysis
    Whenever new code is pushed, it will be automatically updated on heroku.
    
