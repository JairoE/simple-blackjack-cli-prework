def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first = deal_card
  second = deal_card
  display_card_total(first+second)
  return first + second
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 'h'
    display_card_total(deal_card + num)
  elsif input == 's'
    display_card_total(num)
  else
    invalid_command
    prompt_user
  end



end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
