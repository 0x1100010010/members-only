class HomeController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :owner?, only: %i[edit destroy]

  def index
    @posts = Post.all
    @post = Post.new
  end
end
