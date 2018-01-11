require "pry"
require_relative "../lib/song.rb"

class Artist

  attr_reader :name, :songs

  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    self.all.each do |artist|
      @@song_count += artist.songs.size
    end
    @@song_count
  end

end

# Pry.start
