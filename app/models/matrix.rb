class Matrix < ActiveRecord::Base
	has_many :contaminationstatuses, dependent: :nullify
	belongs_to :reference
  has_many :agents, through: :contaminationstatuses, dependent: :nullify
  belongs_to :adminmatrixname 
  belongs_to :adminmatrixgenu 
  belongs_to :adminmatrixspec 
  belongs_to :adminmatrixplantpart 
  belongs_to :adminmatrixstorageform 
  belongs_to :adminmatrixproductform 
  belongs_to :user

  def full_matrix
    "ID: " + self.id.to_s + ". "+ self.adminmatrixname.m_common_name + ": " + self.adminmatrixgenu.m_genus + " " + self.adminmatrixspec.m_species
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |matrix|
        csv << matrix.attributes.values_at(*column_names)
      end
    end
  end

  def dupli
    self.dup 
  end

end
