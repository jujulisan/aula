class Father < ActiveRecord::Base
  has_many :children
  belongs_to :occupation

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def occupations_description
  	if self.occupation.blank?
  		"-"
  	else
  		self.occupation.description 
  	end
  end
end
