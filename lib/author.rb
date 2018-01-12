class Author
    attr_reader :posts
    attr_accessor :name
    @@post_count = 0

    def initialize(name)
      @name = name
      @posts = []
    end

    def add_post_by_title(arg)
      post = Post.new(arg)
      @posts << post
      post.author = self
      @@post_count += 1
    end

    def add_post(new_post)
      self.posts << new_post
      new_post.author = self
      @@post_count += 1
    end

    def self.post_count
      @@post_count
    end

end
