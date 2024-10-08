class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :group_membership, dependent: :destroy
  has_many :groups, through: :group_membership
  has_many :permits, dependent: :destroy
  
  has_one_attached :profile_image
  attr_accessor :remove_profile_image
  
  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end
  
  def self.looks(search, name)
    User.where("name LIKE ?", "%#{name}%")
  end
  
  def active_for_authentication?
    super && (is_active == true)
  end

end
