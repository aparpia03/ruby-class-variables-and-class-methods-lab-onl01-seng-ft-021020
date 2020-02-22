require 'pry'
class Song 
   attr_accessor :name, :artist, :genre 
   
   @@count = 0 
   @@genres = []
   @@artist = []
   
   def initialize(name, artist, genre)
     @name = name
     @artist = artist 
     @genre = genre 
     @@count = @@count + 1
     @@genres << @genre 
     @@artist << @artist 
  end 
  
  def self.count 
    @@songs 
  end 
  
  def self.genres 
    @@genres.uniq! 
  end   
  
  
end 