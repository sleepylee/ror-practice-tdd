# frozen_string_literal: true

class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.where(email: session[:current_email])

  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params.merge(email: session[:current_email]))
    redirect_to root_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :email)
  end
end
