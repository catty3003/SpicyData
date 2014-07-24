class Detection < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify
	has_many :culdetecs, dependent: :delete_all
	belongs_to :admindetectiontype 
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
