class Adminmatrixspec < ActiveRecord::Base
	has_many :matrices
	validates :m_species, presence: true
end
