require 'pry'
require_relative './author'

class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title="")
    @title = title
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end
