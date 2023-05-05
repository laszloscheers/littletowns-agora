class AddGoogleLinkToBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_column :businesses, :google_link, :string
  end
end
