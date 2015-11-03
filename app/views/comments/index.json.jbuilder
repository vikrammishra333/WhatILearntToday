json.array!(@comments) do |comment|
  json.extract! comment, :id, :author_id, :body, :post_id
  json.url comment_url(comment, format: :json)
end
