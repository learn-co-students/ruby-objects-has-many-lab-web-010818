require_relative './song'

 class Artist

   attr_accessor :name

   @@all = []

   @@song_count  = 0

   def self.song_count
     @@song_count
   end

   def songs
     @songs
   end

   def initialize(name)
     @name = name
     @songs = []
     @@all << self
   end

   def add_song(song)
     @songs << song
     song.artist = self
     @@song_count += 1
   end

   def add_song_by_name(songName)
     newSong = Song.new(songName)
     add_song(newSong)
   end

   def self.song_count
     @@song_count
   end

 end
