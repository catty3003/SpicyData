json.array!(@adminmatrixproductforms) do |adminmatrixproductform|
  json.extract! adminmatrixproductform, :id, :product_form
  json.url adminmatrixproductform_url(adminmatrixproductform, format: :json)
end
