#json.user @post.user, :user_name, :password
#json.image_url @post.image.url
# json.category @post.category
json.post do
   json.username @post.user.user_name
   json.extract! @post, :caption, :solved, :image
end
