require_relative "song.rb"

class Artist
  @@song_count = 0
  @@all = []
  
  attr_accessor :songs, :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def add_song_by_name(new_song_name)
    new_song = Song.new(new_song_name)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    self.all.flatten.each do |song|
      @@song_count += 1
    end
    @@song_count
  end

end
