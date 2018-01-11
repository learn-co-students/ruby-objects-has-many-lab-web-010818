class Author

attr_accessor :name
attr_reader :posts
attr_writer :post_count

@@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_object)
    self.posts << post_object
    post_object.author = self
    self.class.post_count +=1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    self.posts << new_post
    self.class.post_count += 1
    binding.pry
  end

  def self.post_count
    @@post_count
  end



end
