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
  songs.each_with_index do |song,index| 
    puts "#{index+1}. #{song}"
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  song_selection=gets.chomp
  songs.each_with_index do |song,index| 
    if song =~ /#{song_selection}/
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_command = gets.chomp
  while user_command != "exit" do 
    puts "Please enter a command:"
    user_command = gets.chomp
    if user_command =="help"
      self.help
    elsif user_command == "list"
      self.list
    elsif user_command == "play"
      self.play
    end 
    while user_command == "exit"
      self.exit_jukebox
    end
  end
end