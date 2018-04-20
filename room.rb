class Room

  attr_reader :name, :price
  attr_accessor :hour_in_use, :total_spend, :current_user, :room_in_use, :songs_list, :waiting_list

  def initialize
    @name = "Alpha"
    @id = 001
    @price = 20
    @hour_in_use = 0
    @total_spend = 0
    @current_user = nil
    @room_in_use = false
    @songs_list = ["Laaa","Looo","Luuu"]
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

  def guest_find_fav_song(fav_song)
   if @songs_list.include?(fav_song)
     return true
   else
     return false
   end
 end

  def calculate_hour_in_use(hours)
    @hour_in_use = hours
    @total_spend = @price * @hour_in_use
  end



end
