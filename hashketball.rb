# Write your code here!

require "pry"

def game_hash
  hash = {:home => {}, :away => {}}
  
  hash[:home] = {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => []}
  hash = populate_nets(hash)
  
  hash[:away] = {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => []}
  hash = populate_hornets(hash)

  return hash
end

def create_player(name, number, shoe, points, rebounds, assists, steals, blocks, dunks)
  
  player = {:player_name => name, :number => number, :shoe => shoe, :points => points, :rebounds => rebounds, :assists => assists, :steals => steals, :blocks => blocks, :slam_dunks => dunks}
  
end

def populate_nets(hash)
  hash[:home][:players] << create_player('Alan Anderson', 0, 16, 22, 12, 12, 3, 1, 1)
  hash[:home][:players] << create_player('Reggie Evans', 30, 14, 12, 12, 12, 12, 12, 7)
  hash[:home][:players] << create_player('Brook Lopez', 11, 17, 17, 19, 10, 3, 1, 15)
  hash[:home][:players] << create_player('Mason Plumlee', 1, 19, 26, 11, 6, 3, 8, 5)
  hash[:home][:players] << create_player('Jason Terry', 31, 15, 19, 2, 2, 4, 11, 1)
  
  return hash
end

def populate_hornets(hash)
  hash[:away][:players] << create_player('Jeff Adrien', 4, 18, 10, 1, 1, 2, 7, 2)
  hash[:away][:players] << create_player('Bismack Biyombo', 0, 16, 12, 4, 7, 22, 15, 10)
  hash[:away][:players] << create_player('DeSagna Diop', 2, 14, 24, 12, 12,4, 5, 5)
  hash[:away][:players] << create_player('Ben Gordon', 8, 15, 33, 3, 2, 1, 1, 0)
  hash[:away][:players] << create_player('Kemba Walker', 33, 15, 6, 12, 12, 7, 5, 12)
  
  return hash
end
#game_hash

def num_points_scored(player)

  game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:player_name] == player then
       return attributes[:players][counter][:points]
     end
     counter += 1
   end
  end
end

def shoe_size(player)
   game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:player_name] == player then
       return attributes[:players][counter][:shoe]
     end
     counter += 1
   end
  end
end

def team_colors(team_name)
  game_hash.map do |team, attributes|
    if attributes[:team_name] == team_name then
      return attributes[:colors]
    end
  end
end

def team_names
  teams = []
  
  game_hash.map do |team, attributes|
    teams  << attributes[:team_name]
  end
  
  return teams
end

def player_numbers(team_name)
  jerseys = []
  
  game_hash.map do |team, attributes|
    if attributes[:team_name] == team_name then
    counter = 0
    while attributes[:players][counter] do
     jerseys << attributes[:players][counter][:number]
     counter += 1
   end
 end
  end
  
  return jerseys
end

def player_stats(player_name)
   stats = {}
   game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:player_name] == player_name then
       target = attributes[:players][counter]
       stats = {:number => target[:number], :shoe => target[:shoe], :points => target[:points], :rebounds => target[:rebounds], :assists => target[:assists], :steals => target[:steals], :blocks => target[:blocks], :slam_dunks => target[:slam_dunks]}
     end
     counter += 1
   end
  end
  return stats
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  biggest_shoe_player = {}
  
   game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:shoe] > biggest_shoe_size then
       biggest_shoe_size = attributes[:players][counter][:shoe]
       biggest_shoe_player = attributes[:players][counter]
     end
     counter += 1
   end
  end
  
  return biggest_shoe_player[:rebounds]
end

def most_points_scored
  most_points = 0
  most_points_player = {}
  
   game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:points] > most_points then
       most_points = attributes[:players][counter][:points]
       most_points_player = attributes[:players][counter][:player_name]
     end
     counter += 1
   end
  end
  
  return most_points_player
end

def winning_team
  home_team = game_hash[:home]
  away_team = game_hash[:away]
  
  home_team_points = 0
  away_team_points = 0
  
   counter = 0
   while home_team[:players][counter] do
     home_team_points += home_team[:players][counter][:points] 
     counter += 1
   end
   
   counter = 0
   while away_team[:players][counter] do
     away_team_points += away_team[:players][counter][:points] 
     counter += 1
   end
   
   if home_team_points > away_team_points then
     return home_team[:team_name]
   elsif away_team_points > home_team_points then
    return away_team[:team_name]
  else return "Tie"
end
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end

def player_with_longest_name
  max_name_length = 0
  longest_name_player = " "
  
   game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:player_name].length > max_name_length then
       max_name_length = attributes[:players][counter][:player_name].length
       longest_name_player = attributes[:players][counter][:player_name]
     end
     counter += 1
   end
  end
  
  return longest_name_player
end

def long_name_steals_a_ton?
  most_steals = 0
  most_steals_player = " "
  
   game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:steals] > most_steals then
       most_steals = attributes[:players][counter][:steals]
       most_steals_player = attributes[:players][counter][:player_name]
     end
     counter += 1
   end
  end
  
  return most_steals_player == player_with_longest_name
end