def welcome
  puts "Welcome! Let's begin the game!"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to: #{card_total}"
end

def prompt_user
  puts "Hit or Stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp.strip
end

def end_game(card_total)
  # code #end_game here
  puts "You hit #{card_total}. Try again"
end

def initial_round
  # code #initial_round here
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?
  # code hit? here
  prompt_user
  input = get_user_input
  until input == 'hit' || input == 'stay'
  invalid_command
  prompt_user
  input = get_user_input
end
if input == 'hit'
  card_total += deal_card
elsif input == 'stay'
card_total
end
end

def invalid_command
  # code invalid_command here
  puts "Try entering again."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
end
end_game(card_total)

end
    
