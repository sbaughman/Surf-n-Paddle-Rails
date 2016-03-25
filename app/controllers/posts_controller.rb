class PostsController < ApplicationController

  def index
    @posts = Post.all.sort_by(&:created_at)
    @current_post = @posts.first
  end

  def show
    @posts = Post.all.sort_by(&:created_at)
    @current_post = @posts.detect { |post| post.id == params[:id].to_i }
    render 'index'
  end

end
