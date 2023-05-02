class TouristGuideController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
  def index
    @tourist_guide_items = TouristGuideItem.all
    @businesses = Business.all
  end
  
  def show
      @item = TouristGuideItem.find(params[:id])
  end
end
