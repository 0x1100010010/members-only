class HomeController < ApplicationController
  def index
    if user_signed_in?
      @posts = Post.all
      @post = Post.new
    else
      @posts = Post.all
      @post = Post.new
    end
  end
end
