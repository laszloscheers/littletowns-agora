class TouristGuideItemsController < ApplicationController
  # Prevents CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
  before_action :set_tourist_guide_item, only: %i[ show edit update destroy ]
  # Validates that any user is signed in, otherwise redirects to the 'Sign In' page.
  before_action :authenticate_user!
  before_action :validate_role
  
  # Validates that the user is a Web Page Administrator
  def validate_role
    if !current_user.admin?
      redirect_to(root_path)
    end
  end

  # GET /tourist_guide_items or /tourist_guide_items.json
  def index
    @tourist_guide_items = TouristGuideItem.all
  end

  # GET /tourist_guide_items/1 or /tourist_guide_items/1.json
  def show
  end

  # GET /tourist_guide_items/new
  def new
    @tourist_guide_item = TouristGuideItem.new
  end

  # GET /tourist_guide_items/1/edit
  def edit
  end

  # POST /tourist_guide_items or /tourist_guide_items.json
  def create
    @tourist_guide_item = TouristGuideItem.new(tourist_guide_item_params)

    respond_to do |format|
      if @tourist_guide_item.save
        format.html { redirect_to admin_area_index_path, notice: "Tourist guide item was successfully created." }
        format.json { render :show, status: :created, location: @tourist_guide_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tourist_guide_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_guide_items/1 or /tourist_guide_items/1.json
  def update
    respond_to do |format|
      if @tourist_guide_item.update(tourist_guide_item_params)
        format.html { redirect_to admin_area_index_path, notice: "Tourist guide item was successfully updated." }
        format.json { render :show, status: :ok, location: @tourist_guide_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tourist_guide_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_guide_items/1 or /tourist_guide_items/1.json
  def destroy
    @tourist_guide_item.destroy

    respond_to do |format|
      format.html { redirect_to admin_area_index_path, notice: "Tourist guide item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_guide_item
      @tourist_guide_item = TouristGuideItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tourist_guide_item_params
      params.require(:tourist_guide_item).permit(:title, :description, :address, :email, :phone_number, :opening_hours, :latitude, :longitude, :user_id, :image)
    end
end
