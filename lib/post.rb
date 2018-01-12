class Post

  attr_accessor :title, :author

  def initialize(title)
  @title = title

  end


  def author_name
    if @author then @author.name else nil end
  end


end
