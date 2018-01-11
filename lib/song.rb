class Song
  attr_accessor :name, :artist
  @@songs = []

  def initialize(title)
    @name = title
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end


end
