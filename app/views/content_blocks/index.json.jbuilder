json.array!(@content_blocks) do |content_block|
  json.extract! content_block, :id, :content, :headline
  json.url content_block_url(content_block, format: :json)
end
