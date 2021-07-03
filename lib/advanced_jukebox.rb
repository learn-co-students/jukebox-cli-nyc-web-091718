#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  #this method should be the same as in jukebox.rb

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  songs.each do |song, location|
    puts song
    end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  song_input = gets.chomp
  songs.each do |song, location|
    if song_input == song
      system 'open ' + location
    end
  end

    if song_input == "list"
      list(songs)
      play(songs)
    else
      puts "Invalid input, please try again:"
      puts list(songs)
    end
end

def list(songs)
songs.each do |song, location|
  puts song
  end

end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  puts "Please enter a command:"
  user_command = gets.chomp

  if user_command == "help"
    help
    puts "Please enter a command:"
    user_command = gets.chomp
  elsif user_command == "list"
    list(songs)
    puts "Please enter a command:"
    user_command = gets.chomp
  elsif user_command == "play"
    play(songs)
    puts "Please enter a command:"
    user_command = gets.chomp
  elsif user_command == "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again:"
    user_command = gets.chomp
    end
end
