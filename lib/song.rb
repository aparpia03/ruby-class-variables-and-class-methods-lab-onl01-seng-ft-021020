require 'pry'
class Song 
attr_accessor :name, :artist, :genre   

@@count = 0 
@@artists = []
@@genres = [] 


def initialize(song_name,artist,genre)
 @name = song_name
 @artist = artist
 @genre = genre 
 @@count = @@count + 1
 @@genres.push(@genre)
 @@artists.push(@artist)
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
     
      genre_count_1 = {}
      
   @@genres.each do |genre|
    if genre_count_1[genre] # refer to last method for same comments but change from artist to genre 
       genre_count_1[genre] += 1  
    else 
       genre_count_1[genre] = 1 
   end 
  end 
  genre_count_1
end   
  
  def self.artist_count
   count_of_artist = {}
   
 @@artists.each do|artist|
    if count_of_artist[artist] #if the artist exists in this hash
       count_of_artist[artist] +=1 #then add 1 to the key value of artist 
  else
       count_of_artist[artist] = 1 #else assign the key value of 1 
    end 
  end   
    count_of_artist 
  end 
end 