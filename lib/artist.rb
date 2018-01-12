require 'pry'

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_inst)
    self.songs << song_inst
    song_inst.artist = self

    @@song_count += 1
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    self.songs << new_song
    new_song.artist = self

    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
