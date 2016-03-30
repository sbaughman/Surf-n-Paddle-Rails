class PostsController < ApplicationController

  before_action :get_posts, only: [:index, :show]
  before_action :fetch_post, only: [:show, :edit, :update, :destroy]
  before_action :get_ad
  before_action :get_recent_posts, only: [:index, :show]

  def index
    @post = @posts.last
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'new'
    end
  end

  private

  def get_posts
    @posts = Post.all.sort_by(&:created_at).reverse
  end

  def fetch_post
    @post = Post.find(params[:id])
  end

  def get_ad
    @ad = Ad.all.sample
  end

  def get_recent_posts
    @recent_posts = get_posts.take(4)
  end

  def post_params
    params.require(:post).permit(:title, :body, :thumbnail, :interject, :author_id)
  end

end
