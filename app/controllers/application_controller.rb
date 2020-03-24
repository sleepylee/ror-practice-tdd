class ApplicationController < ActionController::Base

  def authenticate
    redirect_to new_session_path unless signed_in?
  end

  def signed_in?
    session[:current_email].present?
  end
end
