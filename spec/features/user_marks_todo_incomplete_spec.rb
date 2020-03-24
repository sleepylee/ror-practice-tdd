require 'rails_helper'

feature 'User marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    todo_title = 'Buy groceries'
    create_todo todo_title

    click_on 'Mark as complete'
    expect(page).to have_css '.todo li.completed', text: todo_title

    click_on 'Mark as incomplete'
    expect(page).not_to have_css '.todo li.completed', text: todo_title
  end
end
