class MyAreaController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  before_action :validate_role
  
  def index
    def destroy
      @post.destroy
  
      respond_to do |format|
        format.html { redirect_to my_area_index_path, notice: "Post was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  end
  private
    # Validates that the user is a Web Page Administrator
    def validate_role
      if !current_user.user?
        redirect_to(root_path)
      end
    end
end
