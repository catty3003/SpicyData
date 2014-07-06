class Detection < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses
	has_many :culdetecs
	belongs_to :admindetectiontype 
end
