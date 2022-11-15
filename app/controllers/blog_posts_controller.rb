class BlogPostsController < ApplicationController
  def index
    posts = BlogPost.all()
    render json: posts.as_json
  end

  def show
    post = BlogPost.find_by(id: params[:id])
    render json: post.as_json
  end

  def create
    post = BlogPost.new
    post.title = params[:title]
    post.post = params[:post]
    post.goals = params[:goals]
    post.problems = params[:problems]
    post.date = params[:date]
    post.save
    render json: post.as_json
  end

  def update
    post = BlogPost.find_by(id: params[:id])
    post.title = params[:title] || post.title
    post.post = params[:post] || post.post
    post.goals = params[:goals] || post.goals
    post.problems = params[:problems] || post.problems
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
