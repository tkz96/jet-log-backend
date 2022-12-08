class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    render json: { message: 'Successfully logged out' }, status: :ok
  end
end
