class Adminagentgenu < ActiveRecord::Base
	has_many :agents
	validates :a_genus, presence: true
end
