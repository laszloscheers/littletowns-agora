class AddGoogleLinkToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :google_link, :string
  end
end
