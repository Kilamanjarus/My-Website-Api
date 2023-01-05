class BlogPostSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :date, :post, :image_url, :problems, :goals
end
