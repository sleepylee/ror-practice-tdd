# README

Below are notes for what I have learnt from the tutorial video.

### Setting up and initial Rspec Test
- Init project:

    `$ rails new todos-testing-rails -T` // -T without unit test gen. 
    
- Install rspec (after declaring Gemfile and bundle install):

    `$ rails g rspec:install`

- Update rails_helper as we are not going to use ActiveRecord in this project.
