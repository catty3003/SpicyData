class Treatment < ActiveRecord::Base
	belongs_to :matrices
	belongs_to :reference
	has_many :contaminationstatuses
	belongs_to :admintreatmenttemperature 
	belongs_to :admintreatmentsteam 
	belongs_to :admintreatmentfumigation 
	belongs_to :admintreatmentoptical 
	belongs_to :admintreatmentmechanical 
	belongs_to :admintreatmentprocesstype 
end
