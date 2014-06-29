json.array!(@tenacities) do |tenacity|
  json.extract! tenacity, :id, :total_sample_number, :inoculum_concentration_initial, :i_concentration_unit, :reference_id, :user_id
  json.url tenacity_url(tenacity, format: :json)
end
