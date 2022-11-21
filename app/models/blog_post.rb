class BlogPost < ApplicationRecord
  has_many :problems
  has_many :goals
end
