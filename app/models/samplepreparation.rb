class Samplepreparation < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
	validates :samprep_short_name, :samprep_long_name, :samprep_method_validated_for_condiments, :samprep_process_description, 
						:spik_weight_of_sample_unit, :dilution_fuid, :first_dilution_ratio, :homogenize_with, 
						:enrichment, :dna_extraction, :rna_extraction, :protein_extraction, :homogenizing_method, 
						:homogenizing_method, :cell_lysis, :applied_kit, :other_samprep_method_type, :samprep_method_type_details_text, 
						:samprep_duration_unit, :samprep_comment, presence: true
	validates :spik_weight_of_sample, :samprep_duration, :numericality => { :less_than_or_equal_to => 100 }, presence: true
	validates :reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
					
  belongs_to :user

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
