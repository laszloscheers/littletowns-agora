class LatestProjectsController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
  end
end
