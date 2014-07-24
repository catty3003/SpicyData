class Adminmatrixgenu < ActiveRecord::Base
	has_many :matrices
	validates :m_genus, presence: true 
end
