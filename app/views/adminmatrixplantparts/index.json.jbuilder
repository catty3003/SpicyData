json.array!(@adminmatrixplantparts) do |adminmatrixplantpart|
  json.extract! adminmatrixplantpart, :id, :plant_part
  json.url adminmatrixplantpart_url(adminmatrixplantpart, format: :json)
end
