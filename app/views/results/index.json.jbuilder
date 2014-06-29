json.array!(@results) do |result|
  json.extract! result, :id, :cfu_initial, :cfu_initial_unit, :detectability, :cfu_detected, :cfu_detected_unit, :r_comment
  json.url result_url(result, format: :json)
end
