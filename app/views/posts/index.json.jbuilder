json.array!(@posts) do |post|
  json.extract! post, :id, :head, :contents, :user_id, :blogs_id
  json.url post_url(post, format: :json)
end
