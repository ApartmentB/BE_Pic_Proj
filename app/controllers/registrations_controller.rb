class RegistrationsController < ApplicationController
	def create
		@user = User.new(user_name: params["user_name"],
										 full_name: params["full_name"],
										 email: params["email"],
										 password: params["password"])
		# @user.ensure_auth_token
    if @user.save
      render json: { user: @user.as_json(only: [:user_name, :full_name, :email, :password ]) },
             status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
