json.array!(@admintreatmenttemperatures) do |admintreatmenttemperature|
  json.extract! admintreatmenttemperature, :id, :temperature
  json.url admintreatmenttemperature_url(admintreatmenttemperature, format: :json)
end
