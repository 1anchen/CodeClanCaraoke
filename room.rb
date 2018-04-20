class Room

  attr_reader :name
  attr_accessor :room_in_use, :songs_list

  def initialize(name)
    @name = name
    @id = 001
    @room_in_use = false
    @songs_list = []
  end

  def check_in_guest
    @room_in_use = true
  end

  def check_out_guest
    @room_in_use = false
  end

  def add_song(song_name)
    @songs_list.push(song_name)
  end
end
