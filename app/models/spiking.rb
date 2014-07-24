class Spiking < ActiveRecord::Base
	belongs_to :reference
	has_many :spikingparams, dependent: :delete_all
	has_many :contaminationstatuses, dependent: :nullify
	validates :spik_short_name, :spik_long_name, :spik_process_description, :spik_device_needed, 
						:pros, :cons, presence: true
	validates :reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
  accepts_nested_attributes_for :spikingparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank

  def full_spik
    "ID: " + self.spik_short_name
  end

end
