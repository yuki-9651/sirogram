class Group < ApplicationRecord
  
  belongs_to :owner, class_name: 'User'
  has_many :group_membership, dependent: :destroy
  has_many :users, through: :group_membership
  has_many :permits, dependent: :destroy

  validates :group_name, presence: true, length: { maximum: 30 }
  validates :group_introduction, presence: true, length: { maximum: 300 }
  has_one_attached :image

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end
  
end
