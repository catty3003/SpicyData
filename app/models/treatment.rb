class Treatment < ActiveRecord::Base
	belongs_to :matrices
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
	belongs_to :admintreatmenttemperature 
	belongs_to :admintreatmentsteam 
	belongs_to :admintreatmentfumigation 
	belongs_to :admintreatmentoptical 
	belongs_to :admintreatmentmechanical 
	validates :admintreatmenttemperature_id, :admintreatmentsteam_id, :admintreatmentfumigation_id, 
						:admintreatmentoptical_id, :admintreatmentmechanical_id, :admintreatmentprocesstype_id, 
						:reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
	validates  :steam_in_percent, :fumigation_gas_in_percent, :t_ph, :pressure, :kgy_dose, :t_aw, :water_activity, :treat_duration, :numericality => { :less_than_or_equal_to => 100 }, presence: true 
	belongs_to :admintreatmentprocesstype 
  belongs_to :user


  def full_treat
    "ID: " + self.id.to_s + ". " + self.t_comment
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |treatment|
        csv << treatment.attributes.values_at(*column_names)
      end
    end
  end

  def dupli
    self.dup    
  end
    
end
