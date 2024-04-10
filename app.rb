require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>

  <li><a href=\"/Rock\">Play Rock</a></li>
  <li><a href=\"/Paper\">Play Paper</a></li>
  <li><a href=\"/Scissors\">Play Scissors</a></li>
  "
end


get("/Rock") do

  words = ["Rock", "Paper", "Scissors"]
  picked_word = words.sample
  puts picked_word

result= if picked_word=="Rock"
 "We Tied!"
elsif picked_word=="Paper"
"We Lost!"
else "We Won!"
end

"We played Rock\nThey played #{picked_word}!\n#{result}\n<li><a href=\"/\">Rules</a></li>"
end

get("/Paper") do
    words = ["Rock", "Paper", "Scissors"]
    picked_word = words.sample
    puts picked_word

  result=if picked_word=="Rock"
  "We Won!"
  elsif picked_word=="Paper"
 "We Tied!"
  else "We Lost!"
  end

  "We played Paper\nThey played #{picked_word}!\n#{result}\n<li><a href=\"/\">Rules</a></li>"
  
end

  get("/Scissors") do
      words = ["Rock", "Paper", "Scissors"]
      picked_word = words.sample
      puts picked_word
    
    result=if picked_word=="Rock"
  "We Lost!"
    elsif picked_word=="Paper"
    "We Won!"
    else "We Tied!"
    end

    "We played Scissors\nThey played #{picked_word}!\n #{result}\n<li><a href=\"/\">Rules</a></li>""

  end
