
class Genre

  attr_reader :name, :genre
  attr_accessor :song

@@all = []

  def initialize (name)
    @name = name
end

def songs
  Song.all.select do |song|
  song.genre == self
  end
end

def artists
  Song.all.collect do |song|
  song.artist
   end
 end
end
