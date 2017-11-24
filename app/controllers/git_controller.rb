class GitController < ApplicationController
  def index
    @posts = Post.where(tag_id: 6).order(created_at: 'desc')
    @user = current_user
  end
end