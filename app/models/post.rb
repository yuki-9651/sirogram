class Post < ApplicationRecord
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy
  
  def favorited_by?(user)
    likes.exists?(user_id: user.id)
  end
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/not_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
  
  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end
  
  def self.looks(search, castle_name)
      @post = Post.where("name LIKE?","%#{castle_name}%")
  end
  
end
