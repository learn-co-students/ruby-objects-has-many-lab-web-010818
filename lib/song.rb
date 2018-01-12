class Song

  attr_accessor :name, :artist

  def initialize(name)
  @name = name

  end


  def artist_name
    if @artist then @artist.name else nil end
  end


end



=begin

Song
  #new
    is initialized with an argument of a name (FAILED - 14)
  #name
    has a name (FAILED - 15)
  #artist
    belongs to an artist (FAILED - 16)
  #artist_name
    knows the name of its artist (FAILED - 17)
    returns nil if the song does not have an artist (FAILED - 18)

=end
