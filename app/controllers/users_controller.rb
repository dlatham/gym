class UsersController < ApplicationController
  def new

  end
  def create
    user = Users.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/users/new'
    end
  end
  def show
    @user = Users.find(params[:id])
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

end
