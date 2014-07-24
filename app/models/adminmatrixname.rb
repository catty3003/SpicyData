class Adminmatrixname < ActiveRecord::Base
	has_many :matrices
	validates :m_common_name, presence: true
end
