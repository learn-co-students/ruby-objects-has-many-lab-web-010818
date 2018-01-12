class Artist
  @@song_count = 0

  attr_accessor  :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song_by_name(arg)
    new_song = Song.new(arg)
    @songs << new_song
    new_song.artist = self
    @@song_count += 1
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end



  def self.song_count
    @@song_count
  end

end
