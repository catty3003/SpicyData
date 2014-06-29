json.array!(@detections) do |detection|
  json.extract! detection, :id, :d_short_name, :d_long_name, :d_method_validated_for_condiments, :d_process_description, :d_weight_of_sample, :d_weight_of_sample_unit, :detection_method_dilution, :detection_method_type, :duration_until_result, :duration_until_result_unit, :target_gen, :target_protein, :other_characteristic, :technique, :verification, :interpretation, :d_device_needed, :method_for_comparison, :lod, :sensitivity, :specifity, :reliability_score, :d_comment, :reference_id, :user_id
  json.url detection_url(detection, format: :json)
end
