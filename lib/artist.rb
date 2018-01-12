require 'pry'

class Artist

  @@songs = []
  @@song_count = 0

  attr_accessor :name, :song



  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)

    @songs << song
    song.artist = self
    @@songs << song
    @@song_count += 1

  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
    @songs << song
  end

  def self.song_count
    @@song_count
  end

end
