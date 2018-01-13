require 'pry'
require_relative './song'

class Artist
  attr_accessor :name, :song #when do you use song?

  @@all = []
  @@song_count = 0

  def initialize(name="")
    @name = name
    @songs = [] #artis's collection of songs
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self  #setter
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@all.map do |song_name|
      @@song_count += song_name.songs.length
    end
    @@song_count
  end

  def self.all
    @@all
  end

end
