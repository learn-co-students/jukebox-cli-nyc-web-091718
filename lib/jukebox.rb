songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#example
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp

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
  puts "Goodbye"
end

def run(songs)
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
