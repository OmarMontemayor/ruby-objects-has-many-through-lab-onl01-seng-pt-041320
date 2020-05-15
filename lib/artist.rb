require 'pry'
class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
    Song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    genres =[]
    self.songs.each {|song| genres << song.genre}
    genres
    binding.pry
  end
  def self.all
    @@all
  end
end