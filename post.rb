class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings

end
