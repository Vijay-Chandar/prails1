json.array!(@blogs) do |blog|
  json.extract! blog, :id, :username, :user_id
  json.url blog_url(blog, format: :json)
end
