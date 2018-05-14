class IndexController < ApplicationController
  def home
    @posts = Post.all
    @types=Type.all

  end

  def index
    @posts = Post.all
    @types=Type.all
    respond_to :html, :json
  end
end
