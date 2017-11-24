class HtmlController < ApplicationController
  def index
    @posts = Post.where(tag_id: 3).order(created_at: 'desc')
    @user = current_user
  end
end