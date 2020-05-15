class Genre
  attr_accessor :genre
  @@all = []
  def initialize(name)
    @genre = name
    @@all << @genre
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    self.songs.collect {|song| song.artist}
  end
end