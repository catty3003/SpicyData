class Adminreferencetype < ActiveRecord::Base
	has_many :references
	validates :type_of_literatur, presence: true 
end
