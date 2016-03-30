class AuthorsController < ApplicationController

  before_action :get_ad

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  private

  def get_ad
    @ad = Ad.all.sample
  end

  def author_params
    params.require(:author).permit(:name)
  end

end
