class Spiking < ActiveRecord::Base
	belongs_to :reference
	has_many :spikingparams, dependent: :delete_all
	has_many :contaminationstatuses, dependent: :nullify

  accepts_nested_attributes_for :spikingparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank

  def full_spik
    "ID: " + self.spik_short_name
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |spiking|
        csv << spiking.attributes.values_at(*column_names)
      end
    end
  end

  def dupli
    agent = self.deep_clone :include => :spikingparams
  end
  
end
