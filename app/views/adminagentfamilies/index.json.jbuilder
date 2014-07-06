json.array!(@adminagentfamilies) do |adminagentfamily|
  json.extract! adminagentfamily, :id, :a_family
  json.url adminagentfamily_url(adminagentfamily, format: :json)
end
