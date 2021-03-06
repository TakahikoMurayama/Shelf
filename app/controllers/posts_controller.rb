class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to(posts_path)
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(post_params)
    @post.save
    redirect_to(posts_path)
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to(posts_path)
  end

private

  def post_params
    params.require(:post).permit(:content, :image)
  end




end
