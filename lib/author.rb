require "pry"

class Author

  attr_accessor :name, :posts

  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def self.all
    @@all
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end

  def self.post_count
    self.all.each do |author|
      @@post_count += author.posts.size
    end
    @@post_count
  end

end
