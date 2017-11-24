class CssController < ApplicationController
  def index
    @posts = Post.where(tag_id: 4).order(created_at: 'desc')
    @user = current_user
  end
end