class Artist
  @@all = []
  attr_accessor :name
  def initialize(name="")
    @name = name
    @@all << self
  end

  def self.all
    @@all.dup.freeze
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |s|
      s.artist == self
    end
  end

  def genres
    self.songs.map do |s|
      s.genre
    end
  end
end
