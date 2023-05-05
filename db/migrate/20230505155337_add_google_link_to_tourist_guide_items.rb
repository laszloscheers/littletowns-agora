class AddGoogleLinkToTouristGuideItems < ActiveRecord::Migration[7.0]
  def change
    add_column :tourist_guide_items, :google_link, :string
  end
end
