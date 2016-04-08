# json.user do
#   json.user_name @user.user_name
#   json.access_token @user.access_token
# end

json.extract! @user, :user_name, :auth_token
