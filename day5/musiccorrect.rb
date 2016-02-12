#build a song class
#attributes title, artist, duration (in seconds), lyrics
#make a reader method for all 4 of those attributes
# play method
  #audibly play the lyrics
#friendly_duration method-give back duration in minutes and seconds
  #how many minutes, divide by 60
  #how many remaining seconds, modulus by 60
  #return example "2 minutes, 30 seconds"


class Song
 
  attr_reader :title, :artist, :duration, :lyrics
  
  def initialize (title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def play
    `say #{@lyrics}`
  end

  def friendly_duration
    minutes = @duration / 60
    seconds = @duration % 60
    "#{minutes} minutes, #{seconds} seconds."
  end

end

#driver code
song = Song.new

p song.title
p song.artist
p song.duration
p song.friendly_duration
p song.lyrics