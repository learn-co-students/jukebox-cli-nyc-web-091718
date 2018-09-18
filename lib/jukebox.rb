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

#def songs_hash
  #songs_hash = {}
  #songs.each do |song|
    #split_song = song.split
    #songs_hash[split_song[0]] = split_song[1]
  #end
  #songs_hash
#end

def say_hello(name)
  "Hi #{name}!"
end

def list(songs)
  i = 0
  while i < songs.size do
    puts "#{i+1}. #{songs[i]}"
    i += 1
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of song you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts "Please enter a command:"
end

def is_num?(str)
  !!Integer(str)
rescue ArgumentError, TypeError
  false
end

def play(songs)
  puts "Please enter a song name or number:"
  entry = gets.chomp
  the_song = nil
  
  if is_num?(entry)
    the_song = songs[entry.to_i - 1]
  else
    the_song = songs.find {|x| x == entry}
  end
  
  if !!the_song
    puts "Playing #{the_song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
  exit(0)
end
#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)
