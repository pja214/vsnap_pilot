json.array!(@interactions) do |interaction|
  json.extract! interaction, :id, :employee_id, :task, :complete, :response, :url, :comments
  json.url interaction_url(interaction, format: :json)
end
