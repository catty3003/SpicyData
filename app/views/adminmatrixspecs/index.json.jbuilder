json.array!(@adminmatrixspecs) do |adminmatrixspec|
  json.extract! adminmatrixspec, :id, :m_species
  json.url adminmatrixspec_url(adminmatrixspec, format: :json)
end
