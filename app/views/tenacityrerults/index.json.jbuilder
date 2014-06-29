json.array!(@tenacityrerults) do |tenacityrerult|
  json.extract! tenacityrerult, :id, :tena_duration, :tena_duration_unit, :final_concentration, :f_concentration_unit, :decimal_reduction, :tena_comment, :tenacity_id
  json.url tenacityrerult_url(tenacityrerult, format: :json)
end
