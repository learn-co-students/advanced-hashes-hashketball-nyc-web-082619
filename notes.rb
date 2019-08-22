require "pry"
hash = {"Alan Anderson"=>16, "Reggie Evans"=>14, "Brook Lopez"=>17, "Mason Plumlee"=>19, "Jason Terry"=>15, "Jeff Adrien"=>18, "Bismack Biyombo"=>16, "DeSagna Diop"=>14, "Ben Gordon"=>15, "Kemba Walker"=>15}

big_shoe = hash.values.max

player_name = ""
hash.each do |key, value|
  if value == big_shoe
    player_name = key
  end 
end

p player_name

####

def long_name_steals_a_ton?
  hash_num_steals = {}
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          hash_num_steals[player[:player_name]] = player[:steals] 
        end
      end
    end
  end
  
  most_steals = hash_num_steals.values.max
  player_most_steals = ""
  hash_num_steals.each do |key, value|
    if value == most_steals
      player_most_steals = key
    end
  end
  
  player_most_steals == player_with_longest_name

    
end
#long_name_steals_a_ton

#######
def player_with_most_of(statistic)
  player_name = nil
  amount_of_stat = 0
  game_hash.each do |_team, game_data|
    game_data[:players].each do |player|
      if player[statistic].is_a? String
        if player[statistic].length > amount_of_stat
          amount_of_stat = player[statistic].length
          player_name = player[:player_name]
        end
      elsif player[statistic] > amount_of_stat
        amount_of_stat = player[statistic]
        player_name = player[:player_name]
      end
    end
  end
  player_name
end

def long_name_steals_a_ton?
  player_with_most_of(:steals) == player_with_most_of(:player_name)
end
