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
  songs.each_with_index do |song_name, index|
    puts "#{index+1}. #{song_name}" 
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp 
  if (1..9).to_a.include?(song_choice.to_i)
    puts "Playing #{songs[song_choice.to_i - 1]}"
    elsif songs.include?(song_choice)
    puts "Playing #{song_choice}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye."
end

def run(command) 
  puts help
  puts "Please enter a command:"
  command = gets.chomp
  until command.downcase == "exit" do 
    if command.downcase == "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    elsif command.downcase == "list"
      list(songs)
      puts "Please enter a command:"
      command = gets.chomp
    elsif command.downcase == "play"
      play(songs)
      puts "Please enter a command:"
      command = gets.chomp
    else
      help
      puts "Please enter a command:"
      command = gets.chomp
    end 
  end 
  puts exit_jukebox
end 

