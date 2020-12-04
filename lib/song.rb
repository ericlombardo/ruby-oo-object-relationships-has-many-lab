class Song
  attr_accessor :name, :artist    # create @artist setter and getter so you
                                  # can link artist class as objects
  @@all = []
  def initialize(name)    # initalizes with name, pushes song instance to @@all
    @name = name
    @@all << self
  end

  def self.all    # allows calling outside of class (i.e. in other classes)
    @@all
  end

  def artist_name # simplified way to check name (i.e. song.artist_name)
    self.artist == nil ? nil : self.artist.name
  end
end
