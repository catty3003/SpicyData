class Treatment < ActiveRecord::Base
	belongs_to :matrices
	belongs_to :reference
	has_many :contaminationstatuses
end
