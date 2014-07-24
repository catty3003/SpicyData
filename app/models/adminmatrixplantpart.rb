class Adminmatrixplantpart < ActiveRecord::Base
	has_many :matrices
	validates :plant_part, presence: true 
end
