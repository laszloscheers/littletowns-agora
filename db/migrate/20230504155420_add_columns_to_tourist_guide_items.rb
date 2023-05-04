class AddColumnsToTouristGuideItems < ActiveRecord::Migration[7.0]
  def change
    add_column :tourist_guide_items, :address, :string
    add_column :tourist_guide_items, :email, :string
    add_column :tourist_guide_items, :phone_number, :integer
    add_column :tourist_guide_items, :opening_hours, :string
  end
end
