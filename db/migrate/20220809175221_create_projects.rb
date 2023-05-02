class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.integer :user_id

      t.timestamps
    end
    add_index :projects, :user_id
  end
end
