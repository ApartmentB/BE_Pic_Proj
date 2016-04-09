json.post do
	json.username @post.user.user_name
	json.extract! @post, :caption, :solved, :image
end
# json.category @post.category