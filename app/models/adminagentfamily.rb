class Adminagentfamily < ActiveRecord::Base
	has_many :agents
 validates :a_family, presence: true 
end
