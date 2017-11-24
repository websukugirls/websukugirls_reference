class PostsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  before_action :set_post, only:[:show, :edit, :update, :destroy]
  before_action :set_current_user
  def new
    @post = Post.new
    @tags = Tag.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.title)
    else
      @message = '空欄を入力してください'
      render 'new'
    end
  end

  def show
    # @user = User.find_by(id: params[:format])
    @user = current_user
  end

  def edit
    
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post.title)
  end

  def destroy
    @post.destroy
    redirect_to userpage_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id, :tag_id, :subtitle)
  end

  def set_post
    @post = Post.find_by(title: params[:title])
  end

  def set_current_user
    @user = current_user
  end

end