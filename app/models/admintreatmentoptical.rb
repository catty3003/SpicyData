class Admintreatmentoptical < ActiveRecord::Base
	has_many :treatments
	validates :optical, presence: true
end
