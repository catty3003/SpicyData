json.array!(@admintreatmentfumigations) do |admintreatmentfumigation|
  json.extract! admintreatmentfumigation, :id, :fumigation_gas
  json.url admintreatmentfumigation_url(admintreatmentfumigation, format: :json)
end
