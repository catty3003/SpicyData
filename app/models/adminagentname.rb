class Adminagentname < ActiveRecord::Base
	has_many :agents
	validates :a_common_name, presence: true
end
