class LoginController < ApplicationController
  
  def create
    user = User.find_by("lower(username) = ?", user_params[:username].downcase)
    if user && user.authenticate(user_params[:password])
      render json: { token: token(user.id), user_id: user.id }, status: :created 
    else 
      render json: { errors: [ "Sorry, incorrect username or password" ] }, status: :unprocessable_entity
    end 
  end

  private 
  def user_params
    params.require(:user).permit(:username, :password)
  end
end