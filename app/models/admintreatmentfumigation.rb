class Admintreatmentfumigation < ActiveRecord::Base
	has_many :treatments
	validates :fumigation_gas, presence: true 
end
