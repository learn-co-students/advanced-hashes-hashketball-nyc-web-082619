def game_hash
{:home=>{:team_name=>"Brooklyn Nets",:colors=>["Black","White"],:players=>{"Alan Anderson"=>{number:0,shoe:16,points:22,rebounds:12,assists:12,steals:3,blocks:1,slam_dunks:1},"Reggie Evans"=>{number:30,shoe:14,points:12,rebounds:12,assists:12,steals:12,blocks:12,slam_dunks:7},"Brook Lopez"=>{number:11,shoe:17,points:17,rebounds:19,assists:10,steals:3,blocks:1,slam_dunks:15},"Mason Plumlee"=>{number:1,shoe:19,points:26,rebounds:11,assists:6,steals:3,blocks:8,slam_dunks:5},"Jason Terry"=>{number:31,shoe:15,points:19,rebounds:2,assists:2,steals:4,blocks:11,slam_dunks:1}}},:away=>{:team_name=>"Charlotte Hornets",:colors=>["Turquoise","Purple"],:players=>{"Jeff Adrien"=>{number:4,shoe:18,points:10,rebounds:1,assists:1,steals:2,blocks:7,slam_dunks:2},"Bismack Biyombo"=>{number:0,shoe:16,points:12,rebounds:4,assists:7,steals:22,blocks:15,slam_dunks:10},"DeSagna Diop"=>{number:2,shoe:14,points:24,rebounds:12,assists:12,steals:4,blocks:5,slam_dunks:5},"Ben Gordon"=>{number:8,shoe:15,points:33,rebounds:3,assists:2,steals:1,blocks:1,slam_dunks:0},"Kemba Walker"=>{number:33,shoe:15,points:6,rebounds:12,assists:12,steals:7,blocks:5,slam_dunks:12}}}}
end

# game_hash[:location][:team_name]
# game_hash[:location][:color][i]
# game_hash[:location][:players][:name][:stat]

#Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.
def num_points_scored(player_name)
  for location in game_hash.keys
    if(game_hash[location][:players][player_name])
      return game_hash[location][:players][player_name][:points]
    end
  end
  return "Player not found"
end

#Build a method, shoe_size, that takes in an argument of a player's name and returns the shoe size for that player.
def shoe_size(player_name)
  for location in game_hash.keys
    if(game_hash[location][:players][player_name])
      return game_hash[location][:players][player_name][:shoe]
    end
  end
  return "Player not found"
end

#Build a method, team_colors, that takes in an argument of the team name and returns an array of that teams colors.
def team_colors(team_name)
  game_hash.keys.each do |location|
    return game_hash[location][:colors] if game_hash[location][:team_name] == team_name
  end
end


#Build a method, team_names, that operates on the game hash to return an array of the team names.
def team_names
  team_names = []
  for location in game_hash.keys
    team_names.push(game_hash[location][:team_name])
  end
  return team_names
end

# Build a method, player_numbers, that takes in an argument of a team name and
# returns an array of the jersey number's for that team.
def player_numbers(team_name)
  jersey_numbers = []
  game_hash.keys.each do |location|
    next unless game_hash[location][:team_name] == team_name

    game_hash[location][:players].keys.each do |name|
      jersey_numbers.push(game_hash[location][:players][name][:number])
    end
  end
  jersey_numbers
end

# game_hash[:location][:team_name]
# game_hash[:location][:color][i]
# game_hash[:location][:players][:name][:stat]

# Build a method, player_stats, that takes in an argument of a player's name
# and returns a hash of that player's stats.
def player_stats(player_name)
  stat_hash = {}
  game_hash.keys.each do |location|
    if game_hash[location][:players][player_name]
      return game_hash[location][:players][player_name]
    end
  end
end

# game_hash[:location][:team_name]
# game_hash[:location][:color][i]
# game_hash[:location][:players][:name][:stat]

# Build a method, big_shoe_rebounds, that will return the number of rebounds
# associated with the player that has the largest shoe size.
def big_shoe_rebounds
  max_shoe = 0
  rebounds = 0
  player = ''
  game_hash.keys.each do |location|
    game_hash[location][:players].keys.each do |name|
      if game_hash[location][:players][name][:shoe] > max_shoe
        max_shoe = game_hash[location][:players][name][:shoe]
        rebounds = game_hash[location][:players][name][:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  max_score = 0
  player = ''
  game_hash.keys.each do |location|
    game_hash[location][:players].keys.each do |name|
      if game_hash[location][:players][name][:points] > max_score
        max_score = game_hash[location][:players][name][:points]
        player = name
      end
    end
  end
  player
end

# Which team has the most points? Call the method winning_team.
def winning_team
  home_score = 0
  away_score = 0
  game_hash[:home][:players].keys.each do |name|
    home_score += game_hash[:home][:players][name][:points]
  end
  game_hash[:away][:players].keys.each do |name|
    away_score += game_hash[:away][:players][name][:points]
  end
  home_score > away_score ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
end

# Which player has the longest name? Call the method player_with_longest_name.
def player_with_longest_name
  max_name = 0
  player_name = ''
  game_hash.keys.each do |location|
    game_hash[location][:players].keys.each do |name|
      if name.length > max_name
        max_name = name.length
        player_name = name
      end
    end
  end
  player_name
end

# Write a method that returns true if the player with the longest name
# had the most steals. Call the method long_name_steals_a_ton?
def long_name_steals_a_ton?
  max_steals = 0
  player_name = ''
  game_hash.keys.each do |location|
    game_hash[location][:players].keys.each do |name|
      if game_hash[location][:players][name][:steals] > max_steals
        max_steals = game_hash[location][:players][name][:steals]
        player_name = name
      end
    end
  end
  player_name == player_with_longest_name
end