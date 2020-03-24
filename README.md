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
    
- Start writing some assertion with capybara to use the selector to validate on View

    See more: this [cheat sheet](https://devhints.io/capybara)
    
- Adding a new :email field to todos table:

    `$ rails g migration AddEmailToTodos`
    
    Configure on the migration file to a new column :email to table todos, then run migrate:
    
    `$ rails db:migrate`
    
- Add `gem database_cleaner` to our Gemfile, at :test flavor and install

    `$ bundle install`
    
- Write a support class `database_cleaner` to execute some actions before every suites run.
Then includes to `rails_helper.rb` such dependency to `database_cleaner.rb`.

- Writing tests to sign_in with a different :email, scope the Todos#index to show only todos of the current user/email.

### Adding 'Complete a Todo' feature with TDD

- Create user.rb, this is missing from the tutorial.

- Create new migration to add :completed_at as :timestamp:

    `$ rails g migration AddCompletedAtToTodos`
    Update the field in the migration file, then run db:migrate
    
- From here, we add the logic to define whether a Todo is completed by `touch` the :completed_at field.

- Moving logic from controller to the todo.rb and user.rb
