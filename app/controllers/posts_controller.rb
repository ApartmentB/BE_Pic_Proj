class PostsController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create
    @post = current_user.posts.create(image: params["file"]) #category: params["category"],
    if @post.save
      render "create.json.jbuilder", status: :created
      # render json: {
      #          post: {
      #            user: @post.user,
      #            category: @post.category,
      #            image: @post.image.url,
      #            created_at: @post.created_at,
      #            updated_at: @post.updated_at
      #          }
      #        },
      #        status: :created
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end
end