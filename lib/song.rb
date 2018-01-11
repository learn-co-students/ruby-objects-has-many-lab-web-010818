class Song

  attr_accessor :name, :artist

  @@songs = []

  def initialize(name)
    @name = name
    @@songs << self
  end

  def songs
    @@songs
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
