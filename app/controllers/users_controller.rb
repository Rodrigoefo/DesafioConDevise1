class UsersController < ApplicationController

  def new
    @user=User.new
  end

  def create
    @user=User.find(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to root_path
    else
      render :new
    end
  end



  private
  def user_params
    require.params(:user).permit(:name, :email, :password)
  end


end
