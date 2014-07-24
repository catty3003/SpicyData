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
