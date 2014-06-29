class Reference < ActiveRecord::Base
	has_and_belongs_to_many :agents
	has_many :matrices
	has_many :treatments
	has_many :spikings
	has_many :samplepreparations
	has_many :detections
	has_many :tenacities
	has_many :contaminationstatuses
end
