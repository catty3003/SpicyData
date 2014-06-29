json.array!(@spikings) do |spiking|
  json.extract! spiking, :id, :spik_short_name, :spik_long_name, :spik_process_description, :spik_device_needed, :pros, :cons, :reference_id, :user_id
  json.url spiking_url(spiking, format: :json)
end
