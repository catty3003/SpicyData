class Admintreatmentprocesstype < ActiveRecord::Base
	has_many :treatments
	validates :process_type, presence: true 
end
