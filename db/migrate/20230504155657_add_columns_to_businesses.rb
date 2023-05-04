class AddColumnsToBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_column :businesses, :address, :string
    add_column :businesses, :email, :string
    add_column :businesses, :phone_number, :integer
    add_column :businesses, :opening_hours, :string
  end
end
