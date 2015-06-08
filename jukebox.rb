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

# Your code here


def play(songs)
  song = gets.strip
  if song.to_i >= songs.length
    puts "Invalid input, please try again"
  elsif song =~ /\A\d+\z/
    puts "Playing #{songs}.index(song.to_i)"
  else 
    puts "Playing #{song}"
  end
end

def help
  puts "I accept the following commands:"
  puts "- help: displays this help message"
  puts "- list: displays a list of songs"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  command = gets.strip.downcase
  while command != "exit"
    if command == "help"
      help
    elsif command == "list"
      list
    elsif command ==  "play"
      play
    end
    break
    exit_jukebox
  end
end