class CreateTouristGuideItems < ActiveRecord::Migration[7.0]
  def change
    create_table :tourist_guide_items do |t|
      t.string :title
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.integer :user_id

      t.timestamps
    end
    add_index :tourist_guide_items, :user_id
  end
end
