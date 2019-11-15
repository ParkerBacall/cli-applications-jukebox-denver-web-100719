def help
  puts  "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts" - play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

def play(songs)
puts "Please enter a song name or number:"
user_input = gets.strip
  if user_input.to_i >= 1 && user_input.to_i <= songs.length
      puts "Playing #{songs[user_input.to_i-1]}"
    elsif songs.include?(user_input)
        puts "Playing #{songs.find {|song| song == user_input}}"
      else
        puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip

  if user_input == 'help'
    help
  elsif user_input == 'list'
    list(songs)
  elsif user_input == 'play'
    play(songs)
  elsif user_input == 'exit'
    exit_jukebox
  end

end
