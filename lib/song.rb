require "pry"
class Song
attr_accessor :name
attr_accessor :artist
attr_accessor :genre

@@count =0
@@artists =[]
@@genres = []
def initialize(name, artist, genre)
  @name =name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << self.artist
  @@genres << self.genre
end


def self.artists
  self.artist_count.keys
end
def self.genres
  self.genre_count.keys
end



def self.count
  @@count
  end
  def self.artist_count
    
    hash ={}
   
    @@artists.each do |artist|
      
        if hash.include?(artist)
          hash[artist] += 1
          
        else
          hash[artist] = 1
        end
      
      
    end
    hash
  end
  def self.genre_count
    hash ={}
   
    @@genres.each do |genre|
      
        if hash.include?(genre)
          hash[genre] += 1
          
        else
          hash[genre] = 1
        end
      
      
    end
    hash
  end
end

