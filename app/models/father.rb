class Father < ActiveRecord::Base
  has_many :children
  belongs_to :occupation

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  def occupations_description
  	if self.occupation.blank?
  		"-"
  	else
  		self.occupation.description 
  	end
  end
end
