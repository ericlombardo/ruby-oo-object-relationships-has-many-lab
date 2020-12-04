class Post
  attr_accessor :title, :author # must have :author attr_accessor to link author to post

  @@all = []  # create array to push all post instances to
  
  def initialize(title) # creates @title and pushes instance into @@all array
    # binding.pry
    @title = title
    @@all << self
  end

  def self.all # reader for @@all array so Author class can acces it
    @@all
  end

  def author_name # creates easier way to access post.author_name
    # binding.pry
    self.author == nil ? nil : self.author.name
  end
end