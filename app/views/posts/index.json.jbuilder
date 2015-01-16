json.array!(@posts) do |post|
  json.extract! post, :id, :header, :content, :user_id, :blog_id
  json.url post_url(post, format: :json)
end
