class Detection < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
	has_many :culdetecs, dependent: :delete_all
	belongs_to :admindetectiontype 

	  accepts_nested_attributes_for :culdetecs, 
  		allow_destroy: true, 
      :reject_if => :all_blank
end
