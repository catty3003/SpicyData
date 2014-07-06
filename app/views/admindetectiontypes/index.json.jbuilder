json.array!(@admindetectiontypes) do |admindetectiontype|
  json.extract! admindetectiontype, :id, :detection_method_type
  json.url admindetectiontype_url(admindetectiontype, format: :json)
end
