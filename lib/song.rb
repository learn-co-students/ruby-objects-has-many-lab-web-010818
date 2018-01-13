require_relative './artist'

class Song
  attr_accessor :name, :artist #when do you use artist?

  @@all = []

  def initialize(name="")
    @name = name
    @artist
    # @artists = [] #artis's collection of songs

  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

end
