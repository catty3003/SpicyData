class Agent < ActiveRecord::Base
	has_many :agentparams, dependent: :delete_all
	has_and_belongs_to_many :references
	has_many :contaminationstatuses, dependent: :nullify
	has_many :matrices, through: :contaminationstatuses, dependent: :nullify
	belongs_to :adminagentname 
	belongs_to :adminagentfamily 
	belongs_to :adminagentgenu 
	belongs_to :adminagentspec 

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
    self.dup
  end

end
