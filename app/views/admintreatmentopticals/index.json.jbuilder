json.array!(@admintreatmentopticals) do |admintreatmentoptical|
  json.extract! admintreatmentoptical, :id, :optical
  json.url admintreatmentoptical_url(admintreatmentoptical, format: :json)
end
