class PostsController < ApplicationController
  before_action :get_posts, only: [:all, :funny, :awww, :satisfying, :knowledge, :nature, :sports]

  def all
  end

  def funny
    @posts = @posts.select { |post| post.category % 2 == 0 }
  end

  def awww
    @posts = @posts.select { |post| post.category % 3 == 0 }
  end

  def satisfying
    @posts = @posts.select { |post| post.category % 5 == 0 }
  end

  def knowledge
    @posts = @posts.select { |post| post.category % 7 == 0 }
  end

  def nature
    @posts = @posts.select { |post| post.category % 11 == 0 }
  end

  def sports
    @posts = @posts.select { |post| post.category % 13 == 0 }
  end

  private

  def get_posts
    @posts = Post.all.order(created_at: :desc)
  end
end
