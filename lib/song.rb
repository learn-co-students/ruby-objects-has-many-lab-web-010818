

class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
    # Artist.song_count += 1
  end

  def artist=(musician)
    @artist = musician
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
