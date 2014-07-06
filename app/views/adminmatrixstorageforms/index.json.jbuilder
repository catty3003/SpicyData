json.array!(@adminmatrixstorageforms) do |adminmatrixstorageform|
  json.extract! adminmatrixstorageform, :id, :storage_form
  json.url adminmatrixstorageform_url(adminmatrixstorageform, format: :json)
end
