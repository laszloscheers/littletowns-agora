class MyBusinessAreaController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  before_action :validate_role
  
  # Validates that the user is a Web Page Administrator
  def validate_role
    if !current_user.moderator?
      redirect_to(root_path)
    end
  end

  def index
  end
end
