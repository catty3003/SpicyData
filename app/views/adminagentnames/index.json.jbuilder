json.array!(@adminagentnames) do |adminagentname|
  json.extract! adminagentname, :id, :a_common_name
  json.url adminagentname_url(adminagentname, format: :json)
end
