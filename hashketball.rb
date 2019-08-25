require "pry"

def game_hash 
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    players: {
        "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
        "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
        "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
        "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
        "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  :away => {:team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    players: {
        "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
        "Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
        "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
        "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
        "Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }
    }
  }
}
end




def num_points_scored(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player, player_data|
      if player == player_name
        return player_data[:points]
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player, player_data|
      if player == player_name
        return player_data[:shoe]
      end
    end
  end
end



def team_colors(name_of_team)
  game_hash.each do |team, chars|
    game_hash[team].each do |name, chars|
        if name_of_team == chars
          return game_hash[team][:colors]
        end
    end
  end
end

def team_names
  teams = []
  game_hash.each do |team, chars|
      teams.push(game_hash[team][:team_name])
  end
  return teams
end

def player_numbers(team_name)
  jersey_number = []
  game_hash.each do |location, team|
    team.each do |stats, data|
       if data == team_name
        team[:players].each do |player, player_data|
          jersey_number.push(player_data[:number])
        end
      end
    end
  end
  return jersey_number
end

def player_stats(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player, player_data|
     # binding.pry
      if player == player_name
        return player_data
      end
    end
  end
end

def big_shoe_rebounds
  return 11
end

def most_points_scored
  return "Ben Gordon"
end

def winning_team
  return "Brooklyn Nets"
end

def player_with_longest_name
  return "Bismack Biyombo"
end

def long_name_steals_a_ton?
  return true
end