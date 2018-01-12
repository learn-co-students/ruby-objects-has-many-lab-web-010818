
class Author

  @@posts = []
  @@post_count = 0

  attr_accessor :name, :post



  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts << post
    @@post_count += 1
  end


  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
    @posts << post
  end

  def self.post_count
    @@post_count
  end


end
