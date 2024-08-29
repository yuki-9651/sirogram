class Tag < ApplicationRecord
  
  has_many :tagmaps, dependent: :destroy
  has_many :posts, through: :tagmaps
  
  def self.search(search)
    if search != '#'
      tag = Tag.where(name: search)
      tag[0].posts
    else
      Post.all
    end
  end
  
end
