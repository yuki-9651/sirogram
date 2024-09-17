class Post < ApplicationRecord
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :tagmaps, dependent: :destroy
  has_many :tags, through: :tagmaps
  
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
    Post.where("castle_name LIKE ?", "%#{castle_name}%")
  end
  
 def self.posts_serach(search)
   Post.where(['title LIKE ? OR content LIKE ?', "%#{search}%", "%#{search}%"])
 end

 def save_posts(tags)
   current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
   old_tags = current_tags - tags
   new_tags = tags - current_tags

   # Destroy
    old_tags.each do |old|
      tag = Tag.find_by(tag_name: old)
      self.tags.delete(tag) if tag.present? # nilチェックを追加
    end

   # Create
   new_tags.each do |new_name|
     post_tag = Tag.find_or_create_by(tag_name:new_name)
     self.tags << post_tag
   end
 end
  
end
