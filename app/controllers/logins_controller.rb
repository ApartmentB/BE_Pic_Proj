class LoginsController < ApplicationController

  def create
    @user = User.find_by!(user_name: params["user_name"])#getting from fe
    if @user.authenticate(params["password"])

      #render "create.json.builder", status: :created

       render json: { user: @user.as_json(only: [:user_name, :access_token]) },#sending to fe
              status: :ok
    else
      render json: { message: "Email or password could not be found." },
             status: :unauthorized
    end
  end
end
