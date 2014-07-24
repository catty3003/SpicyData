class Treatment < ActiveRecord::Base
	belongs_to :matrices
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
	belongs_to :admintreatmenttemperature 
	belongs_to :admintreatmentsteam 
	belongs_to :admintreatmentfumigation 
	belongs_to :admintreatmentoptical 
	belongs_to :admintreatmentmechanical 
	belongs_to :admintreatmentprocesstype
	validates :admintreatmenttemperature_id, :admintreatmentsteam_id, :admintreatmentfumigation_id, 
						:admintreatmentoptical_id, :admintreatmentmechanical_id, :admintreatmentprocesstype_id, 
						:reference_id, :user_id, :matrix_id, :numericality => { :greater_than => 0 }, presence: true
	validates :temperature_in_degree, :steam_in_percent, :fumigation_gas_in_percent, :t_ph, :pressure, :kgy_dose, :t_aw, :water_activity, :treat_duration, :numericality => { :less_than_or_equal_to => 100 }, presence: true 

  def full_treat
    "ID: " + self.id.to_s + ". " + self.t_comment
  end

end
