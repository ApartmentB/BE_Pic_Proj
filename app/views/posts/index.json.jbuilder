json.post @posts do |post|
  json.id post.id
  json.user_id post.user_id
  json.url post.image.url
  json.answer post.answer
  json.caption post.caption
  json.solved post.solved
  json.title post.title
end
