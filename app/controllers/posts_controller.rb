class PostsController < ApplicationController

  def index
    @posts = Post.all.sort_by(&:created_at)
    @current_post = @posts.first
    @ads = Ad.all
    @ad = @ads.sample
  end

  def show
    @posts = Post.all.sort_by(&:created_at)
    @current_post = @posts.detect { |post| post.id == params[:id].to_i }
    @ads = Ad.all
    @ad = @ads.sample
    render 'index'
  end

end
