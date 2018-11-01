json.extract! course, :id, :user_id, :category_id, :name, :url, :description, :rating, :created_at, :updated_at
json.url course_url(course, format: :json)
