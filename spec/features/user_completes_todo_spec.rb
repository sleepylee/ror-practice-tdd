require 'rails_helper'

feature 'User completes an uncompleted todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'hello'
    click_on 'Submit'

    click_on 'Mark as complete'

    page.has_css? '.todo li.completed', text: 'hello'
  end
end
