class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all()
    render template: "blog_posts/index"
  end

  def show
    @post = BlogPost.find_by(id: params[:id])
    render json: BlogPostSerializer.new(@post).serializable_hash[:data][:attributes]
  end

  def last
    @post = BlogPost.last
    render json: BlogPostSerializer.new(@post).serializable_hash[:data][:attributes]
  end

  def create
    p params
    post = BlogPost.new
    post.title = params[:title]
    post.post = params[:post]
    post.date = params[:date]
    post.image.attach(params[:pictureFile])

    post.save
    render json: post.as_json
  end

  def update
    post = BlogPost.find_by(id: params[:id])
    post.title = params[:title] || post.title
    post.post = params[:post] || post.post
    post.date = params[:date] || post.date
    post.save
    render json: post.as_json
  end

  def destroy
    post = BlogPost.find_by(id: params[:id])
    post.delete
    render json: { message: "Post has been removed" }
  end
end
