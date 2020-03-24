# frozen_string_literal: true

require 'rails_helper'

feature 'User sees their own todos' do
  scenario 'doesn\'t see the others todos' do
    Todo.create(title: 'Buy eggs', email: 'test@example.com')

    sign_in_as 'test1@example.com'

    expect(page).not_to have_css '.todo li', text: 'Buy eggs'
  end

  scenario 'see the their todos' do
    Todo.create(title: 'Buy 2 eggs', email: 'test@example.com')

    sign_in_as 'test@example.com'

    click_on 'Mark as complete'

    expect(page).to have_css '.todo li.completed', text: 'Buy 2 eggs'
  end
end
