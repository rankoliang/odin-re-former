class UsersController < ApplicationController
  def new; end

  def create
    # params.permit!
    # @user = User.new(params.slice(:username, :email, :password))
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
