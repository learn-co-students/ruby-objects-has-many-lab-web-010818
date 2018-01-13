require_relative './post'


class Author

  attr_accessor :name

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def posts
    @posts
  end


  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(newpost)
    posts << newpost
    newpost.author = self
    @@post_count += 1
  end

  def add_post_by_title(postTitle)
    newPost = Post.new(postTitle)
    add_post(newPost)
  end
end
