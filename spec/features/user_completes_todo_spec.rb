require 'rails_helper'

feature 'User completes an uncompleted todo' do
  scenario 'successfully' do
    sign_in
    title = 'Buy milk'
    create_todo title
    click_on 'Mark as complete'

    expect(page).to have_css '.todo li.completed', text: title
  end

end
