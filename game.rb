def doughnuts
  puts "You walk up to a doughnut stall on leather lane market."
  puts "You're hungry and really want a doughnut."
  puts "There's only one glazed doughnut left."
  puts "Before you leave with your delicious doughnut, you're granted one wish. What do you wish for?"
  puts "Immortality? All the doughnuts? Vengaboys reunion tour?"

  print "> "
  choice = $stdin.gets.chomp.downcase

  if choice.include?("all") || choice.include?("doughnuts")
    puts "Congratulations! Doughnuts are always the right answer"
    exit(0)
  elsif choice.include? "immortality"
    puts "Daaaamn. forever is a long time. Are you sure? (Yes or No)"

    print "> "
    choice = $stdin.gets.chomp.downcase

    if choice == "yes"
      game_over("You walk the world alone forever, ever.")
    elsif choice == "no"
      puts "Alright then let's try this again then..."
      doughnuts
    else
      game_over("Don't hurt my feelings")
    end

  elsif choice.include?("vengaboys")
    puts "I'm not judging you, but I am judging you."
    puts "You're transported to a field in Croydon and the only song performed on stage is Ibiza - Vengaboys"
    puts "Want to try that again? (Yes or No)"

    print "> "
    choice = $stdin.gets.chomp.downcase

    if choice == "yes"
      puts "Alright then let's try this again then..."
      doughnuts
    elsif choice == "no"
      game_over("Whoa! Welcome to Ibiza! For the rest of your life")
    else
      game_over("Don't hurt my feelings")
      end
  end
end

def game_over(why)
puts why, "Good job!"
exit(0)
end

def start
    puts "It's lunchtime shall we get lunch? (Yes or No)"

    print "> "
    choice = $stdin.gets.chomp.downcase

    if choice == "no"
      puts "You have to eat and take a break."
      start
    elsif choice == "yes"
      puts "You see a doughnut stand, are you thinking what I'm thinking? (Yes or No)"

      print "> "
      choice = $stdin.gets.chomp.downcase

      if choice == "yes"
        doughnuts
      else
        game_over("You get a meal deal from tesco.")
      end
    end
end
      start
