# frozen_string_literal: true

require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    visit root_path

    click_on 'Add a new todo'
    fill_in 'Title', with: 'hello'
    click_on 'Submit'

    expect(page).to have_css '.todo li', text: 'hello'
  end
end
