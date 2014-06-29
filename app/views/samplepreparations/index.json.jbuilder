json.array!(@samplepreparations) do |samplepreparation|
  json.extract! samplepreparation, :id, :samprep_short_name, :samprep_long_name, :samprep_method_validated_for_condiments, :samprep_process_description, :spik_weight_of_sample, :spik_weight_of_sample_unit, :dilution_fuid, :first_dilution_ratio, :homogenize_with, :enrichment, :dna_extraction, :rna_extraction, :protein_extraction, :homogenizing_method, :cell_lysis, :applied_kit, :other_samprep_method_type, :samprep_method_type_details_text, :samprep_duration, :samprep_duration_unit, :samprep_comment, :reference_id, :user_id
  json.url samplepreparation_url(samplepreparation, format: :json)
end
