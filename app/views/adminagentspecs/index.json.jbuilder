json.array!(@adminagentspecs) do |adminagentspec|
  json.extract! adminagentspec, :id, :a_species
  json.url adminagentspec_url(adminagentspec, format: :json)
end
