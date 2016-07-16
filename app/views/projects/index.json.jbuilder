json.array!(@projects) do |project|
  json.extract! project, :id, :client, :job_type, :description, :price_in_cents, :file
  json.url project_url(project, format: :json)
end
