class Artist

attr_accessor :name
attr_reader :songs
@@song_count = 0

def initialize(name)
  @songs = []
  @name = name
end

def add_song(song)
  @@song_count += 1
  @song << song #has many
  song.artist = self #belongs to
end

def add_song_by_name(name)
  song = Song.new(name)
  self.add_song(song)
end

def song_count
self.song.size
end

def self.song_count
  @@song_count
end

end
