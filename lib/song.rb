class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def name=(name)
    if self.name.nil?
      self.name = Song.new(name)
    else
      slef.song.name = name
    end
  end

  def artist=(name)
    slef.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song = self.new
    song.name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song
  end
end
