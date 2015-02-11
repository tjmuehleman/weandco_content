json.array!(@tools) do |tool|
  json.extract! tool, :id, :name, :url, :content_block_id
  json.url tool_url(tool, format: :json)
end
