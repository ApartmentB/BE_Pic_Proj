class RegistrationsController < ApplicationController
	def create
		@user = User.new(user_name: params["user_name"],
										 full_name: params["full_name"],
										 email: params["email"],
										 password: params["password"])

      #save
  end
end
