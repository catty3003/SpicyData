json.array!(@admin_matrices) do |admin_matrix|
  json.extract! admin_matrix, :id, :name
  json.url admin_matrix_url(admin_matrix, format: :json)
end
