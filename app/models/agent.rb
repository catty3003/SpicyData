class Agent < ActiveRecord::Base
	has_many :agentparams, dependent: :delete_all
	belongs_to  :reference
	has_many :contaminationstatuses, dependent: :nullify
	has_many :matrices, through: :contaminationstatuses, dependent: :nullify
	belongs_to :adminagentname 
	belongs_to :adminagentfamily 
	belongs_to :adminagentgenu 
	belongs_to :adminagentspec 
  validates :adminagentname_id, :adminagentfamily_id, :adminagentgenu_id, :adminagentspec_id, :numericality => { :greater_than => 0 }, presence: true
  validates :subspecies, :serovar, :other_agent_name, :ref_number, presence: true
  validates :rate_of_illness, :numericality => { :less_than_or_equal_to => 100 }, presence: true
  validates :morbidity, :numericality => { :less_than_or_equal_to => 100 }, presence: true
  validates :mortality, :numericality => { :less_than_or_equal_to => 100 }, presence: true
  validates :isolation_source, :natural_occurence, :a_comment, presence: true
  validates :reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
 
  belongs_to :user

  accepts_nested_attributes_for :agentparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank
            
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |agent|
        csv << agent.attributes.values_at(*column_names)
      end
    end
  end

  def dupli
    agent = self.deep_clone :include => :agentparams
  end

  def full_agent
    "ID: " + self.id.to_s + ". "+ self.adminagentname.a_common_name + ": " + self.adminagentgenu.a_genus + " " + self.adminagentspec.a_species
  end

end
