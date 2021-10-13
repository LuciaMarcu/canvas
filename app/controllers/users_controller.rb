class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    @prints = @user.prints.all
  end
end
