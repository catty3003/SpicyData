json.array!(@adminreferencetypes) do |adminreferencetype|
  json.extract! adminreferencetype, :id, :type_of_literatur
  json.url adminreferencetype_url(adminreferencetype, format: :json)
end
