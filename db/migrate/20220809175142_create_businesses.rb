class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :title
      t.string :description
      t.string :type_of_business
      t.decimal :latitude
      t.decimal :longitude
      t.integer :user_id

      t.timestamps
    end
    add_index :businesses, :user_id
  end
end
