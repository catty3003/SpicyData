json.array!(@spikingparams) do |spikingparam|
  json.extract! spikingparam, :id, :spik_weight_of_sample, :spik_weight_of_sample_unit, :cfu_of_inoculum_per_ml, :cfu_per_gram_spice_spiked, :carrier_substance, :carrier_fluid, :spik_duration, :spik_duration_unit, :spik_comment
  json.url spikingparam_url(spikingparam, format: :json)
end
