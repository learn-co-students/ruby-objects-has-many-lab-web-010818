require_relative "post.rb"
require 'pry'

class Author
  @@post_count = 0
  @@all = []

  attr_accessor :posts, :name

  def initialize(name)
    @name = name
    @posts = []
    @@all << @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def self.all
    @@all
  end

  def add_post_by_title(new_post_title)
    new_post = Post.new(new_post_title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    self.all.flatten.each do |post|
      #binding.pry
      @@post_count += 1
    end
    @@post_count
  end

end
