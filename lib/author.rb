require 'pry'

class Author
  attr_accessor :name
  @@post_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

  def self.post_count=(num)
    @@post_count = num
  end

  def add_post(post)
    posts << post
    self.class.post_count += 1
    post.author = self
  end

  #add_post_by_title
  #takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 1)
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    self.class.post_count += 1
    #self.class.all << self
    posts << new_post
  end
end
