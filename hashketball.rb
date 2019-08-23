 def game_hash
   {:home => {:team_name => "Brooklyn Nets",
              :colors => ["Black", "White"],
              :players => [
                {:player_name => "Alan Anderson",
                  :number => 0,
                  :shoe => 16,
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 1
                  },
                 {:player_name => "Reggie Evans", 
                  :number => 30,
                  :shoe => 14,
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slam_dunks => 7
                  },
                  {:player_name => "Brook Lopez", 
                  :number => 11,
                  :shoe => 17,
                  :points => 17,
                  :rebounds => 19,
                  :assists => 10,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 15
                  },
                  {:player_name => "Mason Plumlee",
                  :number => 1,
                  :shoe => 19,
                  :points => 26,
                  :rebounds => 11,
                  :assists => 6,
                  :steals => 3,
                  :blocks => 8,
                  :slam_dunks => 5                  
                  },
                  {:player_name => "Jason Terry",
                  :number => 31,
                  :shoe => 15,
                  :points => 19,
                  :rebounds => 2,
                  :assists => 2,
                  :steals => 4,
                  :blocks => 11,
                  :slam_dunks => 1                      
                  }]
      },
    :away => {:team_name => "Charlotte Hornets",
              :colors => ["Turquoise", "Purple"],
              :players => [
                {:player_name => "Jeff Adrien",
                  :number => 4,
                  :shoe => 18,
                  :points => 10,
                  :rebounds => 1,
                  :assists => 1,
                  :steals => 2,
                  :blocks => 7,
                  :slam_dunks => 2
                  },
                 {:player_name => "Bismack Biyombo", 
                  :number => 0,
                  :shoe => 16,
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 22,
                  :blocks => 15,
                  :slam_dunks => 10
                  },
                  {:player_name => "DeSagna Diop", 
                  :number => 2,
                  :shoe => 14,
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slam_dunks => 5
                  },
                  {:player_name => "Ben Gordon",
                  :number => 8,
                  :shoe => 15,
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slam_dunks => 0                  
                  },
                  {:player_name => "Kemba Walker",
                  :number => 33,
                  :shoe => 15,
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 7,
                  :blocks => 5,
                  :slam_dunks => 12                      
                  }]
              }
    }

 end
 
 
 def num_points_scored(name)
  game_hash.each do | location, team |
    team.each do | key, value |
      if key == :players
        value.each do | player |
          if player[:player_name] == name
          return player[:points]
          end
        end
      end
    end
  end
 end
 
 
 def shoe_size(name)
   game_hash.each do | location, team |
     team.each do | key, value |
       if key == :players
         value.each do | player |
           if player[:player_name] == name
             return player[:shoe]
           end
         end
       end
     end
   end
 end
 
 
 def team_colors(team_name)
   game_hash.each do | location, team |
     team.each do | key, value |
       if value == team_name
         return game_hash[location][:colors]
       end
     end
   end
   
 end
 
 
 def team_names
   team_names = [ ]
   
   game_hash.each do | location, team |
     team.each do | key, value |
       if key == :team_name
         team_names << value
       end
     end
   end
   
   return team_names
 end


def player_numbers(team_name)
  numbers = [ ]
  
  game_hash.each do | location, team |
    if team[:team_name] == team_name
      team.each do | key, value |
        if key == :players
          value.each do | player |
            numbers << player[:number]
          end
        end
      end
    end
  end
  
  return numbers
end


def player_stats(name)
  game_hash.each do | location, team |
    team[:players].each do | player |
      if player.has_value?(name)
        player.delete(:player_name)
        return player
      end
    end
  end
end


def big_shoe_rebounds
  biggest = 0
  rebounds = 0 
  
  game_hash.each do | location, team |
    team[:players].each do | player |
      if player[:shoe] > biggest
        biggest = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end


def most_points_scored
  most_points = 0
  most_points_player = ""
  
  game_hash.each do | location, team |
    team[:players].each do | player |
      if player[:points] > most_points
        most_points = player[:points]
        most_points_player = player[:player_name]
      end
    end
  end
  
  return most_points_player
end


def winning_team
  home_team_total = 0
  away_team_total = 0
  
  game_hash.each do | location, team |
    team[:players].each do | player |
      if game_hash[:home] 
        home_team_total += player[:points]
        else
          away_team_total += player[:points]
      end
    end
  end
  
  if home_team_total > away_team_total
    return game_hash[:home][:team_name]
  else 
    return game_hash[:away][:team_name]
  end
end


def player_with_longest_name 
  longest_name_length = 0
  longest_name = ""
  
  game_hash.each do | location, team |
    team[:players].each do | player |
      if player[:player_name].length > longest_name_length
        longest_name_length = player[:player_name].length
        longest_name = player[:player_name]
      end
    end
  end
  return longest_name
end


def long_name_steals_a_ton?
  long_name_player = player_with_longest_name
  most_steals = 0
  most_steals_player = ""
  
  game_hash.each do | location, team |
    team[:players].each do | player |
      if player[:steals] > most_steals
        most_steals = player[:steals]
        most_steals_player = player[:player_name]
      end
    end
  end
  
  long_name_player == most_steals_player
end
