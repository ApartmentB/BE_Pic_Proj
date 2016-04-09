class LoginsController < ApplicationController

  def create

    @user = User.find_by(user_name: params["user_name"])#getting from fe
    # if @user == nil
    #   render json: { message: "Username or password could not be found." },
    #          status: :unauthorized
    if @user && @user.authenticate(params["password"])#@user can't be nil

      render "create.json.jbuilder", status: :created

       # render json: { user: @user.as_json(only: [:user_name, :access_token]) },#sending to fe
        #      status: :ok
    else
      render json: { message: "Username or password could not be found." },
             status: :unauthorized
    end
  end
end
