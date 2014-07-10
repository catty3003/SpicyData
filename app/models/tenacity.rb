class Tenacity < ActiveRecord::Base
	belongs_to :reference
	has_many :tenacityparams, dependent: :delete_all
	has_many :contaminationstatuses, dependent: :nullify

  accepts_nested_attributes_for :tenacityparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank

end
