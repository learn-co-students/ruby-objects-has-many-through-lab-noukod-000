class Song
  attr_accessor :name, :genre, :artist
 @@all =[]
  def initialize(name="", genre="", artist="")
    @name = name
    @genre = genre
    @artist=artist
    #genre.add_song(self)
    @@all<<self
  end

  def self.all
    @@all
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def name
    @name
  end
end
