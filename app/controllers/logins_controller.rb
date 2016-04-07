class LoginsController < ApplicationController

  def create
    @user = User.find_by!(user_name: params[:user_name], password: params[:password])
    if @user.authenticate(params[:password])
      render json: { @user.as_json(only: [email: :access_token]) }
          status :ok
    else
      render json: { :message "Email or password could not be found"}
          status :unauthorized
  end

end
