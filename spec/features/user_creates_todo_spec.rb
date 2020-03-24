# frozen_string_literal: true

require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully, but the state is incomplete (default)' do
    sign_in
    todo_title = 'Testing'
    create_todo todo_title

    expect(page).not_to have_css '.todo li.completed', text: todo_title
  end
end
