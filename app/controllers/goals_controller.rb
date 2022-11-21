class GoalsController < ApplicationController
  def create
    goal = Goal.new()
    goal.blog_post_id = params[:blog_post_id]
    goal.goal = params[:goal]
    goal.save
    render json: goal.as_json
  end
end
