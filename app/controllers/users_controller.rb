class UsersController < ApplicationController

  def create
    @user = User.find_or_create_by(user_params)
    @user.notes.build(content: params[:note])
    if @user.save
      flash[:notice] = "Thank you for your interest!  We're exited to share more soon!"
    end

    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end