# Write your code here!
def game_hash
{
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White" ],
    :players =>[
      {"Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}},
      {"Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7}},
      {"Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15}},
      {"Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5}},
      {"Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}}
      ],},
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple" ],
    :players =>[
      {"Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}},
      {"Bismack Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10}},
      {"DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5}},
      {"Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0}},
      {"Kemba Walker" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}}
      ]}}

end

 
def num_points_scored(name)
  game_hash
    game_hash[:home][:players].each_index do |x|
      if game_hash[:home][:players][x].include?(name)
        return game_hash[:home][:players][x][name][:points]
      end
    end
    game_hash[:away][:players].each_index do |y|
      if game_hash[:away][:players][y].include?(name)
        return game_hash[:away][:players][y][name][:points]
      end
    end
end

def shoe_size(name)
    game_hash
    game_hash[:home][:players].each_index do |x|
      if game_hash[:home][:players][x].include?(name)
        return game_hash[:home][:players][x][name][:shoe]
      end
    end
    game_hash[:away][:players].each_index do |y|
      if game_hash[:away][:players][y].include?(name)
        return game_hash[:away][:players][y][name][:shoe]
      end
    end
end

def team_colors(name)
  game_hash
  if game_hash[:home][:team_name] == name
    return game_hash[:home][:colors]
  end
  if game_hash[:away][:team_name] == name
    return game_hash[:away][:colors]
  end
end

def team_names
  name = []
  game_hash
  name << game_hash[:home][:team_name]
  name << game_hash[:away][:team_name]
  return name
end

  
def player_numbers(team)
  game_hash
  numbers = []
  if game_hash[:home][:team_name].include?(team)
    game_hash[:home][:players].each_index do |x|
      game_hash[:home][:players][x].keys.each do |name|
      numbers << game_hash[:home][:players][x][name][:number]

      end
    end
  end
  
  if game_hash[:away][:team_name].include?(team)
    game_hash[:away][:players].each_index do |x|
      game_hash[:away][:players][x].keys.each do |name|
      numbers << game_hash[:away][:players][x][name][:number]

    end
    end
  end
return numbers
end


def player_stats(name)
    game_hash
    game_hash[:home][:players].each_index do |x|
      if game_hash[:home][:players][x].include?(name)
        return game_hash[:home][:players][x][name]
      end
    end
    game_hash[:away][:players].each_index do |y|
      if game_hash[:away][:players][y].include?(name)
        return game_hash[:away][:players][y][name]
      end
    end
end

def big_shoe_rebounds
  home_array = []
  away_array = []
  
  game_hash
  game_hash[:home][:players].each_index do |indx|
    game_hash[:home][:players][indx].keys.each do |name|
    home_array << game_hash[:home][:players][indx][name][:shoe]
   end
  end
  home_array = home_array.sort
 
  game_hash[:away][:players].each_index do |indx|
    game_hash[:away][:players][indx].keys.each do |name|
      away_array << game_hash[:away][:players][indx][name][:shoe]
    end
  end

  away_array = away_array.sort
  big_home = home_array[home_array.size - 1]
  big_away = away_array[away_array.size - 1]
 
  if big_home > big_away
    game_hash[:home][:players].each_index do |indx|
      game_hash[:home][:players][indx].keys.each do |name|
        if game_hash[:home][:players][indx][name][:shoe] == big_home
          return game_hash[:home][:players][indx][name][:rebounds]
        end
      end
    end
  else
    game_hash[:away][:players].each_index do |indx|
      game_hash[:away][:players][indx].keys.each do |name|
        if game_hash[:away][:players][indx][name][:shoe] == big_away
          return game_hash[:away][:players][indx][name][:rebounds]
        end
      end
    end
  end
end    

def most_points_scored
  home_array = []
  away_array = []
  
  game_hash
  game_hash[:home][:players].each_index do |indx|
    game_hash[:home][:players][indx].keys.each do |name|
    home_array << game_hash[:home][:players][indx][name][:points]
   end
  end

  home_array = home_array.sort
 
  game_hash[:away][:players].each_index do |indx|
    game_hash[:away][:players][indx].keys.each do |name|
      away_array << game_hash[:away][:players][indx][name][:points]
    end
  end

  away_array = away_array.sort
  big_home = home_array[home_array.size - 1]
  big_away = away_array[away_array.size - 1]
   
 
  if big_home > big_away
    game_hash[:home][:players].each_index do |indx|
      game_hash[:home][:players][indx].keys.each do |name|
        if game_hash[:home][:players][indx][name][:points] == big_home
          return game_hash[:home][:players][indx].keys[0]
        end
      end
    end
  else
    game_hash[:away][:players].each_index do |indx|
      game_hash[:away][:players][indx].keys.each do |name|
        if game_hash[:away][:players][indx][name][:points] == big_away
          return game_hash[:away][:players][indx].keys[0]
        end
      end
    end
  end
end    

def winning_team
  home_array = []
  away_array = []
  
  game_hash
    
    game_hash[:home][:players].each_index do |indx|
      game_hash[:home][:players][indx].keys.each do |name|
        home_array << game_hash[:home][:players][indx][name][:points]
      end
    end


  game_hash[:away][:players].each_index do |indx|
    game_hash[:away][:players][indx].keys.each do |name|
      away_array << game_hash[:away][:players][indx][name][:points]
    end
  end

  if home_array.sum > away_array.sum
    return game_hash[:home][:team_name]
  else
    return game_hash[:away_array][:team_name]
  end
end


def player_with_longest_name
  home_array = []
  away_array = []
  
  game_hash
    
    game_hash[:home][:players].each_index do |indx|
      game_hash[:home][:players][indx].keys.each do |name|
        home_array << game_hash[:home][:players][indx].keys[0]
      end
    end


  game_hash[:away][:players].each_index do |indx|
    game_hash[:away][:players][indx].keys.each do |name|
      away_array << game_hash[:away][:players][indx].keys[0]
    end
  end
  home_array = home_array.sort_by {|x| x.length}
  away_array = away_array.sort_by {|x| x.length}
  
  if home_array[-1].size > away_array[-1].size
    return home_array[-1]
  elsif home_array
    return away_array[-1]
  end  
end   

def long_name_steals_a_ton?
    home_array = []
  game_hash
   player = player_with_longest_name
   player_point = game_hash[:away][:players][1][player][:points]
    game_hash[:home][:players].each_index do |indx|
        if game_hash[:home][:players][indx].include?(player)
        game_hash[:home][:players].each_index do |indx|
        game_hash[:home][:players][indx].keys.each do |name|
           if player_point > game_hash[:home][:players][indx][name][:points]
             return true
           else
             return false
           end
        end
      end
        else
          game_hash[:away][:players].each_index do |indx|
            game_hash[:away][:players][indx].keys.each do |name|
              if player_point > game_hash[:away][:players][indx][name][:points]
                return true
              else
                return false
              end
            end
          end        
        end 
    end
end



