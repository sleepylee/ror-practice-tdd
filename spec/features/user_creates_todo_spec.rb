# frozen_string_literal: true

require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    todo_title = 'Testing'
    create_todo todo_title

    page.has_css? '.todo li.incomplete', text: todo_title
  end
end
