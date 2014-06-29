json.array!(@culdetecs) do |culdetec|
  json.extract! culdetec, :id, :medium, :agar, :incubation_duration, :incubation_duration_unit, :incubation_temp, :sample_volume_per_disc, :medium_volume_per_disc, :detection_id
  json.url culdetec_url(culdetec, format: :json)
end
