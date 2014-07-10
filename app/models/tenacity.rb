class Tenacity < ActiveRecord::Base
	belongs_to :reference
	has_many :tenacityparams, dependent: :destroy
	has_many :contaminationstatuses

  accepts_nested_attributes_for :tenacityparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank

end
