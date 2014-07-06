class Agent < ActiveRecord::Base
	has_many :agentparams
	has_and_belongs_to_many :references
	has_many :contaminationstatuses
	has_many :matrices, through: :contaminationstatuses
	belongs_to :adminagentname 
	belongs_to :adminagentfamily 
	belongs_to :adminagentgenu 
	belongs_to :adminagentspec 
end
