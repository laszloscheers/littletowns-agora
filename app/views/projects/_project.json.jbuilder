json.extract! project, :id, :title, :description, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
