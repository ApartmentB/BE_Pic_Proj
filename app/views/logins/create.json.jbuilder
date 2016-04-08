# json.user do
#   json.user_name @user.user_name
#   json.access_token @user.auth_token
# end

json.user do
  json.extract! @user, :user_name, :auth_token
end
