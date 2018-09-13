#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/05.mp3',
"Blue" => '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/Chribtoper/jukebox-cli-nyc-web-091718/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : lets you choose a song to play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  i = 1
   my_songs.each_key do |song|
    puts "#{i}. #{song}"
    i += 1
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
  user_response = gets.chomp
  my_songs.each { |song, location|
    if user_response == song
      system 'open ' + location
    end
      }
  if user_response == "list"
    list(my_songs)
    play(my_songs)
  else
    puts "Invalid input, please try again:"
    play(my_songs)
  end
end

def exit_jukebox
puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
    case command
    when "help"
      help(my_songs)
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox(my_songs)
    else
      command = gets.chomp
    end
end
