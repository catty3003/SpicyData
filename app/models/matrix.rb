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
  validates :place_of_origin, :pre_treatment, :further_ingredients, presence: true
  validates :adminmatrixname_id, :adminmatrixgenu_id, :adminmatrixspec_id, :adminmatrixplantpart_id, :adminmatrixstorageform_id, :adminmatrixproductform_id, 
            :reference_id, :user_id, :numericality => { :greater_than => 0 }, presence: true
  validates :m_ph, :m_aw, :humidity_of_matrix, :ash, :sand, :lipids, :numericality => { :less_than_or_equal_to => 100 }, presence: true

  def full_matrix
    "ID: " + self.id.to_s + ". "+ self.adminmatrixname.m_common_name + ": " + self.adminmatrixgenu.m_genus + " " + self.adminmatrixspec.m_species
  end

end
