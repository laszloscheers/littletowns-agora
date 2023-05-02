json.extract! business, :id, :title, :description, :type_of_business, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url business_url(business, format: :json)
