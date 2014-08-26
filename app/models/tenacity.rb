class Tenacity < ActiveRecord::Base
	belongs_to :reference
	has_many :tenacityparams, dependent: :delete_all
	has_many :contaminationstatuses, dependent: :nullify
	validates :i_concentration_unit, presence: true
	validates :inoculum_concentration_initial, presence: true
	validates :total_sample_number, :reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
  belongs_to :user

  accepts_nested_attributes_for :tenacityparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank

  def full_tena
    "ID: " + self.id.to_s + ". CfU initial inoculum: "+ self.inoculum_concentration_initial.to_s + " " + self.i_concentration_unit 
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |tenacity|
        csv << tenacity.attributes.values_at(*column_names)
      end
    end
  end
 
  def dupli
    agent = self.deep_clone :include => :tenacityparams
  end
   
end

