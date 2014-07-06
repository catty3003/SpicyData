json.array!(@adminagentgenus) do |adminagentgenu|
  json.extract! adminagentgenu, :id, :a_genus
  json.url adminagentgenu_url(adminagentgenu, format: :json)
end
