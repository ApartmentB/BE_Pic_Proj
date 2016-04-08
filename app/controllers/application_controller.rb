class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
    token = request.headers["Auth-Token"]
    if token
      User.find_by(auth_token: token)
    end
  end

  def authenticate!
    unless current_user
      render json: { errors: "You need to be logged in to do that." },
             status: :unauthorized
    end
  end
end
