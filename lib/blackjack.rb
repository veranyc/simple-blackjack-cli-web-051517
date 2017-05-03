require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_deal = deal_card
  second_deal = deal_card
  card_total = first_deal + second_deal
  display_card_total(card_total)
  card_total
end

#  2.times do
#    deal_card
#    card_total << first_deal
#  end
#    display_card_total
#    return card_total
#end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total = card_total + deal_card
  elsif user_input == "s"
    return card_total
  else
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
 end_game(card_total)
end
