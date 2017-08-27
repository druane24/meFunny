class PostsController < ApplicationController
  before_action :get_posts, only: [:all, :funny, :awww, :satisfying, :knowledge, :nature, :sports]

  def all
  end

  def funny
    @posts = @posts.select { |post| post.category.to_i % 2 == 0 }
  end

  def awww
    @posts = @posts.select { |post| post.category.to_i % 3 == 0 }
  end

  def satisfying
    @posts = @posts.select { |post| post.category.to_i % 5 == 0 }
  end

  def knowledge
    @posts = @posts.select { |post| post.category.to_i % 7 == 0 }
  end

  def nature
    @posts = @posts.select { |post| post.category.to_i % 11 == 0 }
  end

  def sports
    @posts = @posts.select { |post| post.category.to_i % 13 == 0 }
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def get_posts
    @posts = Post.all.order(id: :desc)
  end
end
