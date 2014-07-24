class Admintreatmentsteam < ActiveRecord::Base
	has_many :treatments
	validates :steam, presence: true
end
