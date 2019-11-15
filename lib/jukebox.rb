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

  songs.each_with_index do |item, index|
      if user_input.to_i == (index+1)
        puts "#{index+1}. #{item}"
      if user_input == item      
         puts "#{item}"
       else
         puts "Invalid input, please try again"
       end
    end
end


def exit_jukebox
  puts "Goodbye"
end
