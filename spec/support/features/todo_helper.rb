module Features
  def create_todo(todo_title)
    click_on 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Submit'
  end
end
