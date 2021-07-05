require 'pry'
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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  valid_numbers = Array (1..10)
  song_names = []
  songs.each do |song|
    song_name = song.split(" - ")[1]
    song_names << song_name
  end
  if valid_numbers.include? user_choice.to_i
    puts "Playing #{songs[user_choice.to_i-1]}"
  elsif songs.include? user_choice
    puts "Playing #{user_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = ""
  while (not command.casecmp("exit"))
    command = gets.chomp
    if command.casecmp("help")
      help
    elsif command.casecmp("list")
      list(songs)
    elsif command.casecmp("play")
      play(songs)
    elsif command.casecmp("exit")
      exit_jukebox
      break
    else
      help
    end
  end
  if command.casecmp("exit")
    exit_jukebox
  end
end
