class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author
      self.author.name #calling on instance author
    else
      nil
  end
end

end
