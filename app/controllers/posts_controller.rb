class PostsController < ApplicationController

  def index
    @posts = Post.by_date
    render json: @posts
  end

  def create
    @post = Post.new(post_params)
    render json: @post if @post.save
  end

  def show
    @post = Post.find_by(id: params[:id])
    render json: @post
  end

  def update
    @post = Post.find_by(id: params[:id])
    render json: @post if @post.update
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :date, :user_id)
  end

end
