class AdminAreaController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_role
  
  # Validates that the user is a Web Page Administrator
  def validate_role
    if !current_user.admin?
      redirect_to(root_path)
    end
  end
  def index
  end
end
