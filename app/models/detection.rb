class Detection < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses
	has_many :culdetecs, dependent: :destroy
	belongs_to :admindetectiontype 

	  accepts_nested_attributes_for :culdetecs, 
  		allow_destroy: true, 
      :reject_if => :all_blank
end
