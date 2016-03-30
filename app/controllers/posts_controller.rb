class PostsController < ApplicationController

  before_action :get_posts, only: [:index, :show]
  before_action :fetch_post, only: [:show, :edit]
  before_action :get_ad, only: [:index, :show]

  def index
    @post = @posts.first
  end

  def show
    render 'index'
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def get_posts
    @posts = Post.all.sort_by(&:created_at)
  end

  def fetch_post
    @post = Post.find(params[:id])
  end

  def get_ad
    @ad = Ad.all.sample
  end

  def post_params
    params.require(:post).permit(:title, :body, :thumbnail, :interject, :author_id)
  end

end
