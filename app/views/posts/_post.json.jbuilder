json.extract! post, :id, :title, :summary, :content, :created_at, :updated_at
json.url post_url(post, format: :json)