class Genre 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all.push(self)
  end 
  
  def self.all 
    @all 
  end 
  
  def songs 
    Song.all.select {|el| el.genre == self}
  end 
  
  def artists
    songs.map {|el|el.artist}
  end 
end 