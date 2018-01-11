class Artist

  attr_accessor :name, :songs

  @@artists = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def artists
    @@artists
  end

  def song_count
    @@song_count
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
