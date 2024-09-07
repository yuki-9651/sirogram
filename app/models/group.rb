class Group < ApplicationRecord
  
  has_many :group_membership, dependent: :destroy
  has_many :users, through: :group_membership
  has_many :permits, dependent: :destroy

  validates :group_name, presence: true
  validates :group_introduction, presence: true
  has_one_attached :image

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end
  
end
