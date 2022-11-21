class ProblemsController < ApplicationController
  def create
    problem = Problem.new()
    problem.blog_post_id = params[:blog_post_id]
    problem.problem = params[:problem]
    problem.save
    render json: problem.as_json
  end
end
