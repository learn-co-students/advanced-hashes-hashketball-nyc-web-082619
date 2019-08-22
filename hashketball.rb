def game_hash
  hash = {:home => 
            {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => 
            [{"Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}},
              {"Reggie Evans" => {:number => 30, :shoe => 14, :points =>12, :rebounds => 12, :assists =>12, :steals => 12, :blocks =>12, :slam_dunks =>7}},
              {"Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15}},
              {"Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5}},
              {"Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks =>1 }}
            ]
            },
          :away =>
            {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => 
            [{"Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}},
              {"Bismack Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10}},
              {"DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5}},
              {"Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0}},
              {"Kemba Walker" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals =>7, :blocks => 5, :slam_dunks => 12}}
            ]
            }
  }
end

def num_points_scored(player)
  hash = game_hash
  hash[:home][:players].each {|x|
    if x.key?(player)
      return x[player][:points]
    end
  }
  hash[:away][:players].each {|x|
    if x.key?(player)
      return x[player][:points]
    end
  }
end

def shoe_size(player)
  hash = game_hash
  hash[:home][:players].each {|x|
    if x.key?(player)
      return x[player][:shoe]
    end
  }
  hash[:away][:players].each {|x|
    if x.key?(player)
      return x[player][:shoe]
    end
  }
end

def team_colors(team)
  hash = game_hash
  hash.each_key{|key|
  if hash[key][:team_name] == team
    return hash[key][:colors]
  end
  }
end

def team_names
  hash = game_hash
  array = [hash[:home][:team_name], hash[:away][:team_name]]
  array
end

def player_numbers(team)
  arr = []
  hash = game_hash
  hash.each_key{|key|
    if hash[key][:team_name] == team
      hash[key][:players].each{|x|
        #puts x
        x.each_key{|y|
          arr.push(x[y][:number])
        }
        # x.each_key{|y|
        #   arr.push(x[y[:number]])
        #}
      }
    end
  }
  return arr
end

def player_stats(player)
  hash = game_hash
  hash[:home][:players].each {|x|
    if x.key?(player)
      return x[player]
    end
  }
  hash[:away][:players].each {|x|
    if x.key?(player)
      return x[player]
    end
  }
end

def big_shoe_rebounds
  hash = game_hash
  sizes = {}
  hash.each_key{|key|
    hash[key][:players].each{|x|
      x.each_key{|y|
        sizes[y] = x[y][:shoe]
      }
    }
  }
  max_size = sizes.max_by{|k,v| v}[0]
  hash.each_key{|key|
   hash[key][:players].each{|z|
    if z.key?(max_size)
      return z[max_size][:rebounds]
    end
   }
  }
end

asdfsdf







