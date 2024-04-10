require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>

  <li><a href=\"/rock\">Play Rock</a></li>
  <li><a href=\"/paper\">Play Paper</a></li>
  <li><a href=\"/scissors\">Play Scissors</a></li>
  "
end


get("/rock") do

  words = ["Rock", "Paper", "Scissors"]
  picked_word = words.sample
  puts picked_word

result= if picked_word=="Rock"
 "We Tied!"
elsif picked_word=="Paper"
"We Lost!"
else "We Won!"
end

"<li><a href=\"/rock\">Play Rock</a></li>\n
<li><a href=\"/paper\">Play Paper</a></li>\n
<li><a href=\"/scissors\">Play Scissors</a></li>\n
We played Rock\nThey played #{picked_word}!\n#{result}\n<li><a href=\"/\">Rules</a></li>"
end

get("/paper") do
    words = ["Rock", "Paper", "Scissors"]
    picked_word = words.sample
    puts picked_word

  result=if picked_word=="Rock"
  "We Won!"
  elsif picked_word=="Paper"
 "We Tied!"
  else "We Lost!"
  end

  "<li><a href=\"/rock\">Play Rock</a></li>\n
  <li><a href=\"/paper\">Play Paper</a></li>\n
  <li><a href=\"/scissors\">Play Scissors</a></li>\n
  We played Paper\nThey played #{picked_word}!\n#{result}\n<li><a href=\"/\">Rules</a></li>"
  
end

  get("/scissors") do
      words = ["Rock", "Paper", "Scissors"]
      picked_word = words.sample
      puts picked_word
    
    result=if picked_word=="Rock"
  "We Lost!"
    elsif picked_word=="Paper"
    "We Won!"
    else "We Tied!"
    end

    "<li><a href=\"/rock\">Play Rock</a></li>\n
    <li><a href=\"/paper\">Play Paper</a></li>\n
    <li><a href=\"/scissors\">Play Scissors</a></li>\n
    We played Scissors\nThey played #{picked_word}!\n #{result}\n<li><a href=\"/\">Rules</a></li>"

  end
