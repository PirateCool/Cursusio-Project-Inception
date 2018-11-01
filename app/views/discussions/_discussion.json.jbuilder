json.extract! discussion, :id, :user_id, :category_id, :title, :content, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
