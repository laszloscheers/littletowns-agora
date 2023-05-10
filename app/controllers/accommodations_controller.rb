class AccommodationsController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
  def index
    @businesses = Business.all
  end
  def show
    @business = Business.find(params[:id])
  end
end
