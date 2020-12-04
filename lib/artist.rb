class Artist
  attr_accessor :name

  def initialize(name) # initialize with artist name
    @name = name
  end

  def songs   # selects all songs from array in Song class that match artist
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song_name) # links song to artist
    song_name.artist = self
  end

  def add_song_by_name(song_name) # Creates song and links to artist
    song = Song.new(song_name) 
    song.artist = self
  end
  
  def self.song_count   # #=> int, total number of songs created
    Song.all.length
  end
  
end