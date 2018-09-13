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

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index|
    puts "#{index+1}. #{song}"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
    if songs.include?(user_response)
      puts "Playing #{user_response}"
    elsif (1..songs.length).to_a.include?(user_response.to_i)
      user_response = user_response.to_i
      puts "Playing #{songs[user_response - 1]}"
    else
      puts "Invalid input, please try again"
    end
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      list(songs)
      play(songs)
    elsif user_response == "help"
      help
    else
      break
    end
    break
  end
  if user_response == "exit"
    exit_jukebox
  end
end
