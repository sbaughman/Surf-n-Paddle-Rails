class PostsController < ApplicationController

  def index
    @posts = Post.all.sort_by(&:created_at)
    @current_post = @posts.first
    @first_half = @current_post.first_half(@current_post.body)
    @ads = Ad.all
    @ad = @ads.sample
  end

  def show
    @posts = Post.all.sort_by(&:created_at)
    @current_post = Post.find(params[:id].to_i)
    @ads = Ad.all
    @ad = @ads.sample
    render 'index'
  end

end
