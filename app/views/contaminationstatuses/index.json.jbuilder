json.array!(@contaminationstatuses) do |contaminationstatus|
  json.extract! contaminationstatus, :id, :cfu_natural_contamination, :cfu_natural_contamination_unit, :matrix_id, :agent_id, :tenacity_id, :treatment_id, :spiking_id, :samplepreparation_id, :detection_id, :result_id, :reference_id, :user_id
  json.url contaminationstatus_url(contaminationstatus, format: :json)
end
