class Matrix < ActiveRecord::Base
	has_many :contaminationstatuses
	has_many :agents, through: :contaminationstatuses
	has_many :treatments
	belongs_to :reference

   accepts_nested_attributes_for :contaminationstatuses, 
           :reject_if => :all_blank, 
           :allow_destroy => true

  accepts_nested_attributes_for :agents, 
           :reject_if => :all_blank, 
           :allow_destroy => true  


end
