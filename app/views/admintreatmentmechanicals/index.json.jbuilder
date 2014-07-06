json.array!(@admintreatmentmechanicals) do |admintreatmentmechanical|
  json.extract! admintreatmentmechanical, :id, :mechanical
  json.url admintreatmentmechanical_url(admintreatmentmechanical, format: :json)
end
