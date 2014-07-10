json.array!(@tenacityparams) do |tenacityparam|
  json.extract! tenacityparam, :id, :tena_duration, :tena_duration_unit, :final_concentration, :f_concentration_unit, :decimal_reduction, :tena_comment, :tenacity_id
  json.url tenacityparam_url(tenacityparam, format: :json)
end
