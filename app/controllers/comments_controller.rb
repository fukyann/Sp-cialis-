class CommentsController < ApplicationController
  def create
    comment = Comment.create!(comment_params)
    redirect_to recipe_path(comment.recipe.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(chef_id: current_chef.id, recipe_id: params[:recipe_id])
   
  end
end
