class Detection < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses
	has_many :culdetecs
end
