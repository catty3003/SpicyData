class Adminmatrixstorageform < ActiveRecord::Base
	has_many :matrices
	validates :storage_form, presence: true
end
