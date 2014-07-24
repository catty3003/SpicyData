class Admintreatmentmechanical < ActiveRecord::Base
	has_many :treatments
	validates :mechanical, presence: true
end
