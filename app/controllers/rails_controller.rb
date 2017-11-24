class RailsController < ApplicationController
  def index
    @posts = Post.where(tag_id: 1).order(created_at: 'desc')
    @user = current_user
  end
end