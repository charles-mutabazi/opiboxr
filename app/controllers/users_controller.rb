class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @cover_page = true
    @user = User.find(params[:id])
		@posts = @user.posts.order('created_at DESC')
  end
end
