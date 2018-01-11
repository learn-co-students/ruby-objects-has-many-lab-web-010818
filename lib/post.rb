class Post

  attr_accessor :title
  attr_reader :author

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def author_name
    self.author ? self.author.name : nil
  end

end
