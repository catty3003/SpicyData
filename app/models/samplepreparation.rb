class Samplepreparation < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify

  def full_sampleprep
    "ID: " + self.samprep_short_name
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |samplepreparation|
        csv << samplepreparation.attributes.values_at(*column_names)
      end
    end
  end

  def dupli
    self.dup    
  end
    
end
