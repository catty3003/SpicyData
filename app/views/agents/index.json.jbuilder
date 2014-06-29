json.array!(@agents) do |agent|
  json.extract! agent, :id, :a_common_name, :a_family, :a_genus, :a_species, :subspecies, :serovar, :other_agent_name, :ref_number, :rate_of_illness, :morbidity, :mortality, :isolation_source, :natural_occurence, :a_comment, :reference_id, :user_id
  json.url agent_url(agent, format: :json)
end
