class Detection < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
	has_many :culdetecs, dependent: :delete_all
	belongs_to :admindetectiontype 
	validates :d_short_name, :d_long_name, 
	:d_method_validated_for_condiments, 
	:d_weight_of_sample_unit, :detection_method_dilution, 
	:duration_until_result_unit, :target_gen, :target_protein, 
	:other_characteristic, :technique, :verification, :interpretation, 
	:d_device_needed, :method_for_comparison, :lod, :sensitivity, 
	:specifity, :reliability_score, :d_comment, presence: true
	validates :d_weight_of_sample, :duration_until_result, :numericality => { :less_than_or_equal_to => 100 }, presence: true
	validates :admindetectiontype_id, :reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
	

  belongs_to :user

	  accepts_nested_attributes_for :culdetecs, 
  		allow_destroy: true, 
      :reject_if => :all_blank

  def full_detec
    "ID: " + self.id.to_s + ". "+ self.d_short_name 
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |detection|
        csv << detection.attributes.values_at(*column_names)
      end
    end
  end
  
  def dupli
    detection = self.deep_clone :include => :culdetecs
  end

end
