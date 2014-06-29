json.array!(@agentparams) do |agentparam|
  json.extract! agentparam, :id, :infectious_dose, :level_of_infectious_dose, :infected_species, :agent_id
  json.url agentparam_url(agentparam, format: :json)
end
