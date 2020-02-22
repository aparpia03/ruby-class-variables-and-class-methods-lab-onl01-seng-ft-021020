require 'pry'
class Song 
   attr_accessor :name, :artist, :genre 
   
   @@count = 0 
   @@genres = []
   
   def initialize
     @name
     @artist 
     @genre 
     @@count = @@count + 1
     @@genres << @genre 
  end 
  
  def self.count 
    @@songs 
  end 
  
  def self.genres 
    @@genres.uniq! 
  end   
  
  
end 