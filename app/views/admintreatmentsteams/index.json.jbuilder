json.array!(@admintreatmentsteams) do |admintreatmentsteam|
  json.extract! admintreatmentsteam, :id, :steam
  json.url admintreatmentsteam_url(admintreatmentsteam, format: :json)
end
