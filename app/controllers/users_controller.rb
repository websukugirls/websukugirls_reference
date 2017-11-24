class UsersController < ApplicationController
  before_action :authenticate_user!
  def userpage
    @user = current_user
    @posts = current_user.posts.all.order(created_at: 'desc')
  end

end