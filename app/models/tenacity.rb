class Tenacity < ActiveRecord::Base
	belongs_to :reference
	has_many :tenacityrerults
	has_many :contaminationstatuses
end
