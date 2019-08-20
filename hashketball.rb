def game_hash 
  game_hash = {
  :home => { 
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {"Alan Anderson" => {:number => "0", 
                           :shoe => "16",
                           :points => "22",
                           :rebounds => "12",
                           :assists => "12",
                           :steals => "3",
                           :blocks => "1",
                           :slam_dunks => "1"}},
      {"Reggie Evans" =>  {:number => "30",
                           :shoe => "14",
                           :points => "12",
                           :rebounds => "12",
                           :assists => "12",
                           :steals => "12",
                           :blocks => "12",
                           :slam_dunks => "7"}},
      {"Brook Lopez" => { :number => "11",
                          :shoe => "17",
                          :points => "17",
                          :rebounds => "19",
                          :assists => "10",
                          :steals => "3",
                          :blocks => "1",
                          :slam_dunks => "15"}},
      {"Mason Plumlee" => {:number => "1",
                          :shoe => "19",
                          :points => "26",
                          :rebounds => "11",
                          :assists => "6",
                          :steals => "3",
                          :blocks => "8",
                          :slam_dunks => "5"}},
      {"Jason Terry" =>  { :number => "31",
                          :shoe => "15",
                          :points => "19",
                          :rebounds => "2",
                          :assists => "2",
                          :steals => "4",
                          :blocks => "11",
                          :slam_dunks => "1"}}                    
      ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {"Jeff Adrien" => {:number => "4",
                        :shoe => "18",
                          :points => "10",
                          :rebounds => "1",
                          :assists => "1",
                          :steals => "2",
                          :blocks => "7",
                          :slam_dunks => "2"}},
      {"Bismack Biyombo" =>  {:number => "0",
                          :shoe => "16",
                          :points => "12",
                          :rebounds => "4",
                          :assists => "7",
                          :steals => "22",
                          :blocks => "15",
                          :slam_dunks => "10"}},
      {"DeSagna Diop" => { :number => "2",
                          :shoe => "14",
                          :points => "24",
                          :rebounds => "12",
                          :assists => "12",
                          :steals => "4",
                          :blocks => "5",
                          :slam_dunks => "5"}},
      {"Ben Gordon" => {:number => "8",
                          :shoe => "15",
                          :points => "33",
                          :rebounds => "3",
                          :assists => "2",
                          :steals => "1",
                          :blocks => "1",
                          :slam_dunks => "0"}},
      {"Kemba Walker" => { :number => "33",
                          :shoe => "15",
                          :points => "6",
                          :rebounds => "12",
                          :assists => "12",
                          :steals => "7",
                          :blocks => "5",
                          :slam_dunks => "12"}},                    
      ]
  }
  }
end 

def num_points_scored(player_name)
  game_hash.each do |location, team_data| #i.e. 'home' and data hash 
    team_data.each do |team_attribute_keys, team_attributes|#keys=name,color,players; attr=values incl array of players 
      if team_attribute_keys == :players
        team_attributes.each do |player_hash|
          player_hash.each do |player, stats_hash|
            if player == player_name 
              return stats_hash.fetch(:points).to_i 
            end 
          end
        end 
      end
    end 
  end  #returns points scored for given player 
end 

def shoe_size(player_name)
  game_hash.each do |location, team_data| #i.e. 'home' and data hash 
    team_data.each do |team_attribute_keys, team_attributes| #keys=name,color,players; attr=values incl array of players 
      if team_attribute_keys == :players
        team_attributes.each do |player_hash|
          player_hash.each do |player, stats_hash|
            if player == player_name 
              return stats_hash.fetch(:shoe).to_i 
            end 
          end
        end 
      end
    end 
  end  #returns shoe size for given player 
end 

def team_colors(team_name) #returns arguments team colors
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute_keys, team_attributes|
      if team_attributes == team_name 
        return team_data.fetch(:colors)
      end 
    end 
  end 
end 

def team_names 
  teams = [] 
  game_hash.each do |location, team_data|
    teams << team_data.fetch(:team_name) 
  end 
  return teams  #returns an array of team names 
end 

def player_numbers(team) #returns an array of jersey numbers
  jersey_numbers = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
      team_data.each do |team_attribute_keys, team_attributes|
        if team_attribute_keys == :players
          team_attributes.each do |player_hash|
            player_hash.each do |player_key, stats_hash|
              jersey_numbers << stats_hash.fetch(:number).to_i 
            end
          end 
        end 
      end 
    end 
  end 
  return jersey_numbers.sort 
end 

def player_stats(player_name1)  #returns all the stats for a given player in a hash...ie.. fetch value of player_key
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute_keys, team_attributes |
     if team_attribute_keys == :players 
        team_attributes.each do |player_hash| 
          player_hash.each do |player, stats_hash|
            if player == player_name1 
              stats_hash.each do |stat, number_string|
                stats_hash.store(stat, number_string.to_i)  
              end 
              return stats_hash
            end 
          end 
        end 
      end   
    end   
  end 
end 



def big_shoe_rebounds #returns the #rebounds for the player with largest shoe size
 shoe_array = []
 game_hash.each do |location, team_data|
   team_data.each do |team_attribute_keys, team_attributes |
     if team_attribute_keys == :players
       team_attributes.each do |player_hash|
         player_hash.each do |player, stats_hash|
           shoe_array << stats_hash.fetch(:shoe)
         end
       end
     end
   end
 end
 biggest_shoe = shoe_array.max
 player_index = shoe_array.index(biggest_shoe)
 player = game_hash[:home][:players][player_index].keys
 return game_hash[:home][:players][player_index][player[0]][:rebounds].to_i
end

def most_points_scored #returns the name of player with most points
  points_array = []
  game_hash.each do |location, team_data|
  team_data.each do |team_attribute_keys, team_attributes |
    if team_attribute_keys == :players
      team_attributes.each do |player_hash|
        player_hash.each do |player, stats_hash|
          points_array << stats_hash.fetch(:points).to_i
         end        
       end       
     end    
   end   
  end 
highest_points = points_array.max
player_index = points_array.index(highest_points)
player = game_hash[:away][:players][3].keys
return player[0]
end

def winning_team #returns the NAME of team with the most points 
  home_points_array = []
  away_points_array = []
  game_hash.each do |location, team_data|
    if location == :home 
      team_data.each do |team_attribute_keys, team_attributes |
        if team_attribute_keys == :players
          team_attributes.each do |player_hash|
            player_hash.each do |player, stats_hash|
              home_points_array << stats_hash.fetch(:points).to_i 
            end
          end
        end
      end
    end
    home_total_points = home_points_array.reduce(0){ |total, num| total + num }
    if location == :away
      team_data.each do |team_attribute_keys, team_attributes |
        if team_attribute_keys == :players
          team_attributes.each do |player_hash|
            player_hash.each do |player, stats_hash|
              away_points_array << stats_hash.fetch(:points).to_i 
            end
          end
        end
      end
      away_total_points = away_points_array.reduce(0){ |total, num| total + num }  
      if home_total_points > away_total_points
        return game_hash[:home][:team_name]
        else
        return game_hash[:away][:team_name]
        end 
    end
  end
end 

def player_with_longest_name #returns player with the longest name 
 longest_name_array = []
 game_hash.each do |location, team_data|
   team_data.each do |team_attribute_keys, team_attributes |
     if team_attribute_keys == :players
       team_attributes.each do |player_hash|
         player_hash.each do |player, stats_hash|
           longest_name_array << player
         end
       end
     end
   end
 end
 return longest_name_array.max_by(&:length)
end

def long_name_steals_a_ton? 
 steals_array = []
 game_hash.each do |location, team_data|
   team_data.each do |team_attribute_keys, team_attributes |
     if team_attribute_keys == :players
       team_attributes.each do |player_hash|
         player_hash.each do |player, stats_hash|
           steals_array << stats_hash.fetch(:steals).to_i
         end
       end
     end
   end
 end
 most_steals = steals_array.max
 player_index = steals_array.index(most_steals)
  player = game_hash[:away][:players][1].keys[0]
 player == player_with_longest_name
end
  
 



