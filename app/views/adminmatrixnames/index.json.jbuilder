json.array!(@adminmatrixnames) do |adminmatrixname|
  json.extract! adminmatrixname, :id, :m_common_name
  json.url adminmatrixname_url(adminmatrixname, format: :json)
end
