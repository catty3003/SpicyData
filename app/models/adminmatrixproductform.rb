class Adminmatrixproductform < ActiveRecord::Base
	has_many :matrices
	validates :product_form, presence: true 
end
