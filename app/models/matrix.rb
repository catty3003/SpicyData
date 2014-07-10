class Matrix < ActiveRecord::Base
	has_many :contaminationstatuses, dependent: :nullify
	belongs_to :reference
  has_many :agents, through: :contaminationstatuses, dependent: :nullify
  belongs_to :adminmatrixname 
  belongs_to :adminmatrixgenu 
  belongs_to :adminmatrixspec 
  belongs_to :adminmatrixplantpart 
  belongs_to :adminmatrixstorageform 
  belongs_to :adminmatrixproductform 

end
