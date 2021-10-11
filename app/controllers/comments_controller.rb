class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @print = Print.find(params[:print_id]) 
  	@comment = @print.comments.create(comment_params)  
  	@comment.user_id = current_user.id if current_user 
  	@comment.save!

  	redirect_to print_path(@print)
  end

  def destroy
    @print = Print.find(params[:print_id])
  	@comment = @print.comments.find(params[:id])
  	@comment.destroy
  	redirect_to print_path(@print)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :response)
  end
end
