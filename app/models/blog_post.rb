class BlogPost < ApplicationRecord
  has_many :problems
  has_many :goals

  has_one_attached :image, :dependent => :destroy
end
