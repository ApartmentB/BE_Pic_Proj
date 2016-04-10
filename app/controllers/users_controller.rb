class UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jbuilder", status: :ok
  end
end
