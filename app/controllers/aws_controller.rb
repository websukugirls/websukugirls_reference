class AwsController < ApplicationController
  def index
    @posts = Post.where(tag_id: 5).order(created_at: 'desc')
    @user = current_user
  end
end