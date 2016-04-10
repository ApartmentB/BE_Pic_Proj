class PostsController < ApplicationController
 before_action :authenticate!, only: [:create]
 #before_action :authenticate!, except: [:index]

  def create
    @post = current_user.posts.create(image: params["file"],
                                      caption: params["caption"],
                                      solved: params["solved"]) #category: params["category"],
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

 # def destroy
 #    @post = Post.find(params[:id])
 #    if current_user.id == @post.user_id
 #      @post.destroy
 #      render plain: "Post deleted."
 #      status: :accepted
 #    else
 #      render json: { error: "Unable to delete post."}
 #      status: :unauthorized
 #    end
 #  end

end
