class PostsController < ApplicationController

  def index
    @posts = Post.all.sort_by(&:created_at)
    @newest_post = @posts.first
  end

  def show
  end

end
