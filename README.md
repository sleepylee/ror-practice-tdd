# README

Below are notes for what I have learnt from the tutorial video.

### Setting up and initial Rspec Test
- Init project:

    `$ rails new todos-testing-rails -T` // -T without unit test gen. 
    
- Install rspec (after declaring Gemfile and bundle install):

    `$ rails g rspec:install`

- Update rails_helper as we are not going to use ActiveRecord in this project. Run rake to execute test:

    `$ rake`

- Writing simple capybara interaction with the virtual browser, then write mockup routes, index page...to match the rspec 

### More exercise with capybara and rspec

- Configure routes for creating a new todo, generate a new model: Todo with title

    `$ rails g model Todo title && rails db:migrate` 
    
- 
