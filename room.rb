class Room

  attr_reader :name, :price
  attr_accessor :current_user, :room_in_use, :songs_list, :waiting_list

  def initialize(name)
    @name = name
    @id = 001
    @price = 20
    @current_user = nil
    @room_in_use = false
    @songs_list = []
    @waiting_list = []
  end

  def check_in_guest(guest_name)
    @room_in_use = true
    @current_user = guest_name
  end

  def check_out_guest(guest_name)
    @room_in_use = false
    @current_user = nil
  end

  def add_song(song_name)
    @songs_list.push(song_name)
  end

  def enter_guest_to_waiting_list(guest_name)
      if @room_in_use == true
        @waiting_list.push(guest_name)
      else
         @room_in_use = true
      end
  end


end
