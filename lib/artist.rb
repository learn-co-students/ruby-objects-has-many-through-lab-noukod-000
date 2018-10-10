# class Artist
#     attr_accessor :name, :genre, :songs
#
#     def initialize(name)
#       @name = name
#       @songs = []
#     end
#
#     def self.all
#       @@all
#     end
#
#     def new_song(song)
#       # song = Song.new(name)
#       # genre = Genre.new(name)
#       # self.songs = name
#
#       @songs << song
#      song.artist = self
#     end
#     # song = Song.new(name)
#     # self.songs << song
#     # song.artist = self
#
#     def songs # an artist has many songs
#       @songs
#     end
#     def genres
#       @songs.collect { |song| song.genre }
#     end
# end


class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect { |song| song.genre }
  end
end
