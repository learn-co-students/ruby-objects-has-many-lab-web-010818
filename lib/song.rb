require_relative './artist'

 class Song


   attr_accessor :name, :artist

   def initialize(name)
     @name = name
     @artist = nil
   end

   def artist_name
     if self.artist
        artist.name
     else
       nil
     end
   end


 end
