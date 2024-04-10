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
"We played Rock"
"They played "picked_word"
  words = ["Rock", "Paper", "Scissors"]
  picked_word = words.sample
  puts picked_word
end

if picked_word="Rock"
else "We Tied!"
if picked_word="Paper"
else "We Lost!"
if picked_word="Scissors"
else "We Won!"
end

get("/Paper") do
  "We played Paper"
  "They played "picked_word"
    words = ["Rock", "Paper", "Scissors"]
    picked_word = words.sample
    puts picked_word
  end
  
  if picked_word="Rock"
  else "We Won!"
  if picked_word="Paper"
  else "We Tied!"
  if picked_word="Scissors"
  else "We Lost!"
  end

  get("/Scissors") do
    "We played Scissors"
    "They played "picked_word"
      words = ["Rock", "Paper", "Scissors"]
      picked_word = words.sample
      puts picked_word
    end
    
    if picked_word="Rock"
    else "We Lost!"
    if picked_word="Paper"
    else "We Won!"
    if picked_word="Scissors"
    else "We Tied!"
    end
