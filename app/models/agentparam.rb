class Agentparam < ActiveRecord::Base
	belongs_to :agent
	validates :infectious_dose, :numericality => { :less_than_or_equal_to => 100 }, presence: true
	validates :level_of_infectious_dose, :numericality => { :less_than_or_equal_to => 100 }, presence: true
	validates :infected_species, presence: true
	validates :agent_id, :numericality => { :greater_than => 0 }, presence: true
end
