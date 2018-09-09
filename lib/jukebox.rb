
def numeric?(string)
  string !~ /\D/
end

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  song_id = gets.chomp
  if numeric?(song_id) && song_id.to_i <= songs.length
    puts songs[song_id.to_i - 1]
  elsif songs.include?(song_id)
    puts song_id
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each do |song|
    puts song
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
        play(songs)
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
end
