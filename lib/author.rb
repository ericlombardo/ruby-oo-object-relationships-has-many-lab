class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def posts  # scans @@all array in Post class for post that match author
    Post.all.select {|post_title| post_title.author == self}
  end

  def add_post(post_title)  # take post_title as arg, link author to post
   post_title.author = self
  end

  def add_post_by_title(post_title) # creates new post and links author to post
    post = Post.new(post_title)
    post.author = self
  end

  def self.post_count # #=> int, count of all posts in @@all array
    Post.all.length
  end
end