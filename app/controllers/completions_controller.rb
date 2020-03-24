class CompletionsController < ApplicationController
  def create
    puts "Debug: #{params}"
    current_user.todos.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end
end
