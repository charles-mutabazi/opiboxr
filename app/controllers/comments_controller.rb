class CommentsController < ApplicationController
  before_action :authenticate_user! #only signed in can comment
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.post_id = @post.id

    if @comment.save
      redirect_to request.referrer
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end
end
