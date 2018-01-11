require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.song_count
    @@song_count
  end

  def self.song_count=(num)
    @@song_count = num
  end

  def songs
    @songs
  end

  def add_song(song)
    songs << song
    song.artist = self
    self.class.all << song
    self.class.song_count += 1
  end

  def add_song_by_name(name)
    # Create new song object
    new_song = Song.new(name)
    # Add new song object to Artist instance and Artist class variables
    songs << new_song
    self.class.all << new_song
    # Associate artist instance to song instance
    new_song.artist = self

    self.class.song_count += 1
    new_song
  end

  def song_count
    songs.count
  end

  def self.song_count
    self.all.count
  end
end
