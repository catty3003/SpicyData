json.array!(@treatments) do |treatment|
  json.extract! treatment, :id, :temperature, :temperature_in_degree, :steam, :steam_in_percent, :fumigation_gas, :fumigation_gas_in_percent, :optical, :mechanical, :process_type, :t_ph, :pressure, :kgy_dose, :t_aw, :water_activity, :other_condition, :treat_duration, :treat_duration_unit, :t_comment, :reference_id, :user_id, :matrix_id
  json.url treatment_url(treatment, format: :json)
end
