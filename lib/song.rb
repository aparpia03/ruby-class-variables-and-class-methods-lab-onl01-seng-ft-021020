require 'pry'
class Song 
   attr_accessor :name, :artist, :genre 
   
   @@count = 0 
   @@genres = []
   @@artists = []
   
   def initialize(name, artist, genre)
     @name = name
     @artist = artist 
     @genre = genre 
     @@count = @@count + 1
     @@genres << @genre 
     @@artists << @artist 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres.uniq! 
  end   
  
  def self.artists
    @@artists.uniq!
  end   
  
def self.genre_count 
    new_hash = {}
   @@genres.each do |genre|
     binding.pry 
     if new_hash == new_hash[genre]
       
    end  
  end    
end 
  
  
end 