class Admintreatmenttemperature < ActiveRecord::Base
	has_many :treatments
	validates :temperature, presence: true
end
