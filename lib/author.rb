require 'pry'
require_relative './post'

class Author
  attr_accessor :name, :post

  @@all = []
  @@post_count = 0

  def initialize(name="")
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post="")
    @posts <<  post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    @@all.map do |author|
      @@post_count += author.posts.length
    end
    @@post_count
  end

end
