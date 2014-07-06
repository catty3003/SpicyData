json.array!(@adminmatrixgenus) do |adminmatrixgenu|
  json.extract! adminmatrixgenu, :id, :m_genus
  json.url adminmatrixgenu_url(adminmatrixgenu, format: :json)
end
