class Samplepreparation < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
end
