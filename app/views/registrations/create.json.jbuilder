json.user do
  json.id @user.id
  json.user_name @user.user_name
  json.email @user.email

  # json.extract! @user, :id, :user_name, :email
  # json.merge! @user.atrributes ### gives every attribute from the model
  # json.merge! @user.atrributes.except(:updated_at)
end


# json.users @users do |user|
#   json.extract! user, :id, :user_name, :email
# end
