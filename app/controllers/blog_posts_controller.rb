class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all()
    render template: "blog_posts/index"
  end

  def show
    @post = BlogPost.find_by(id: params[:id])
    render json: @post.as_json
  end

  def create
    p params
    post = BlogPost.new
    post.title = params[:title]
    post.post = params[:post]
    post.date = params[:date]
    post.image.attach(params[:image])

    # post.save
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
