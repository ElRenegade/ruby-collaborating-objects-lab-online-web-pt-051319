class Artist
  attr_accessor :name, :songs
  @@all_songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @name = name
    @songs << song

  end

  def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
    self.create(name)
  end
end

def self.find(name)
  self.all.detect { |artist| artist.name == name }
end

def self.create(name)
  artist = Artist.new(name)
  artist.save
  artist
end

def save
  @@all_songs << self
end

  def print_songs
    self.songs.each{|song|song.name}
  end
end
