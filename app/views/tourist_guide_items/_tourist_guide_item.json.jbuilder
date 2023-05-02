json.extract! tourist_guide_item, :id, :title, :description, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url tourist_guide_item_url(tourist_guide_item, format: :json)
