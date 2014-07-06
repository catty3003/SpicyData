json.array!(@admintreatmentprocesstypes) do |admintreatmentprocesstype|
  json.extract! admintreatmentprocesstype, :id, :process_type
  json.url admintreatmentprocesstype_url(admintreatmentprocesstype, format: :json)
end
