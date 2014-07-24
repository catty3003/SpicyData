class Adminagentspec < ActiveRecord::Base
	has_many :agents
	validates :a_species, presence: true
end
