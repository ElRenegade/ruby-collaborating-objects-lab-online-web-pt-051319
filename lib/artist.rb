class Artist
  attr_accessor :name, :songs

  @@all = [] # array of artists instances

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    find(name) || create(name)
  end

  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = new(name)
    @@all << artist
    artist
  end

  def save
    @@all << self
  end

  def print_songs
    puts @songs.collect(&:name)
  end
end
