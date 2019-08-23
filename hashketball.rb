require "pry"
def game_hash
  hash = Hash.new
  hash[:home] = {}
  hash[:away] = {}
  hash[:home][:team_name] = "Brooklyn Nets"
  hash[:away][:team_name] = "Charlotte Hornets"
  hash[:home][:colors] = ["Black", "White"]
  hash[:away][:colors] = ["Turquoise", "Purple"]
  hash[:home][:players] = [
    {:number => "0", :shoe_size => "16", :points => "22", :rebounds => "12",
    :assists => "12", :steals => "3", :blocks => "1", :slam_dunks => "1"}, 
    {:number => "30", :shoe_size => "14", :points => "12", :rebounds => "12",
    :assists => "12", :steals => "12", :blocks => "12", :slam_dunks => "7"},
    {:number => "11", :shoe_size => "17", :points => "17", :rebounds => "19",
    :assists => "10", :steals => "3", :blocks => "1", :slam_dunks => "15"},
    {:number => "1", :shoe_size => "19", :points => "26", :rebounds => "11",
    :assists => "6", :steals => "3", :blocks => "8", :slam_dunks => "5"},
    {:number => "31", :shoe_size => "15", :points => "19", :rebounds => "2",
    :assists => "2", :steals => "4", :blocks => "11", :slam_dunks => "1"}
    ]
  hash[:away][:players] = [
    {:number => "4", :shoe_size => "18", :points => "10", :rebounds => "1",
    :assists => "1", :steals => "2", :blocks => "7", :slam_dunks => "2"}, 
    {:number => "0", :shoe_size => "16", :points => "12", :rebounds => "4",
    :assists => "7", :steals => "22", :blocks => "15", :slam_dunks => "10"},
    {:number => "2", :shoe_size => "14", :points => "24", :rebounds => "12",
    :assists => "12", :steals => "4", :blocks => "5", :slam_dunks => "5"},
    {:number => "8", :shoe_size => "15", :points => "33", :rebounds => "3",
    :assists => "2", :steals => "1", :blocks => "1", :slam_dunks => "0"},
    {:number => "33", :shoe_size => "15", :points => "6", :rebounds => "12",
    :assists => "12", :steals => "7", :blocks => "5", :slam_dunks => "12"}
    ]
  hash
end

def num_points_scored(player)
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => "0", :shoe_size => "16", :points => "22", :rebounds => "12",
      :assists => "12", :steals => "3", :blocks => "1", :slam_dunks => "1"}, 
      {:number => "30", :shoe_size => "14", :points => "12", :rebounds => "12",
      :assists => "12", :steals => "12", :blocks => "12", :slam_dunks => "7"},
      {:number => "11", :shoe_size => "17", :points => "17", :rebounds => "19",
      :assists => "10", :steals => "3", :blocks => "1", :slam_dunks => "15"},
      {:number => "1", :shoe_size => "19", :points => "26", :rebounds => "11",
      :assists => "6", :steals => "3", :blocks => "8", :slam_dunks => "5"},
      {:number => "31", :shoe_size => "15", :points => "19", :rebounds => "2",
      :assists => "2", :steals => "4", :blocks => "11", :slam_dunks => "1"}
      ]
    hash[:away][:players] = [
      {:number => "4", :shoe_size => "18", :points => "10", :rebounds => "1",
      :assists => "1", :steals => "2", :blocks => "7", :slam_dunks => "2"}, 
      {:number => "0", :shoe_size => "16", :points => "12", :rebounds => "4",
      :assists => "7", :steals => "22", :blocks => "15", :slam_dunks => "10"},
      {:number => "2", :shoe_size => "14", :points => "24", :rebounds => "12",
      :assists => "12", :steals => "4", :blocks => "5", :slam_dunks => "5"},
      {:number => "8", :shoe_size => "15", :points => "33", :rebounds => "3",
      :assists => "2", :steals => "1", :blocks => "1", :slam_dunks => "0"},
      {:number => "33", :shoe_size => "15", :points => "6", :rebounds => "12",
      :assists => "12", :steals => "7", :blocks => "5", :slam_dunks => "12"}
      ]
    hash
  end
  name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
  if name_array.index(player) < 5
    results = game_hash[:home][:players][name_array.index(player)][:points].to_i
  elsif name_array.index(player) > 4
    results = game_hash[:away][:players][(name_array.index(player) - 5)][:points].to_i
  else
    results = "That player cannot be found."
  end
end

def shoe_size(player)
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => "0", :shoe_size => "16", :points => "22", :rebounds => "12",
      :assists => "12", :steals => "3", :blocks => "1", :slam_dunks => "1"}, 
      {:number => "30", :shoe_size => "14", :points => "12", :rebounds => "12",
      :assists => "12", :steals => "12", :blocks => "12", :slam_dunks => "7"},
      {:number => "11", :shoe_size => "17", :points => "17", :rebounds => "19",
      :assists => "10", :steals => "3", :blocks => "1", :slam_dunks => "15"},
      {:number => "1", :shoe_size => "19", :points => "26", :rebounds => "11",
      :assists => "6", :steals => "3", :blocks => "8", :slam_dunks => "5"},
      {:number => "31", :shoe_size => "15", :points => "19", :rebounds => "2",
      :assists => "2", :steals => "4", :blocks => "11", :slam_dunks => "1"}
      ]
    hash[:away][:players] = [
      {:number => "4", :shoe_size => "18", :points => "10", :rebounds => "1",
      :assists => "1", :steals => "2", :blocks => "7", :slam_dunks => "2"}, 
      {:number => "0", :shoe_size => "16", :points => "12", :rebounds => "4",
      :assists => "7", :steals => "22", :blocks => "15", :slam_dunks => "10"},
      {:number => "2", :shoe_size => "14", :points => "24", :rebounds => "12",
      :assists => "12", :steals => "4", :blocks => "5", :slam_dunks => "5"},
      {:number => "8", :shoe_size => "15", :points => "33", :rebounds => "3",
      :assists => "2", :steals => "1", :blocks => "1", :slam_dunks => "0"},
      {:number => "33", :shoe_size => "15", :points => "6", :rebounds => "12",
      :assists => "12", :steals => "7", :blocks => "5", :slam_dunks => "12"}
      ]
    hash
  end
  name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
  if name_array.index(player) < 5
    results = game_hash[:home][:players][name_array.index(player)][:shoe_size].to_i
  elsif name_array.index(player) > 4
    results = game_hash[:away][:players][(name_array.index(player) - 5)][:shoe_size].to_i
  else
    results = "That player cannot be found."
  end
end

def team_colors(team)
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => "0", :shoe_size => "16", :points => "22", :rebounds => "12",
      :assists => "12", :steals => "3", :blocks => "1", :slam_dunks => "1"}, 
      {:number => "30", :shoe_size => "14", :points => "12", :rebounds => "12",
      :assists => "12", :steals => "12", :blocks => "12", :slam_dunks => "7"},
      {:number => "11", :shoe_size => "17", :points => "17", :rebounds => "19",
      :assists => "10", :steals => "3", :blocks => "1", :slam_dunks => "15"},
      {:number => "1", :shoe_size => "19", :points => "26", :rebounds => "11",
      :assists => "6", :steals => "3", :blocks => "8", :slam_dunks => "5"},
      {:number => "31", :shoe_size => "15", :points => "19", :rebounds => "2",
      :assists => "2", :steals => "4", :blocks => "11", :slam_dunks => "1"}
      ]
    hash[:away][:players] = [
      {:number => "4", :shoe_size => "18", :points => "10", :rebounds => "1",
      :assists => "1", :steals => "2", :blocks => "7", :slam_dunks => "2"}, 
      {:number => "0", :shoe_size => "16", :points => "12", :rebounds => "4",
      :assists => "7", :steals => "22", :blocks => "15", :slam_dunks => "10"},
      {:number => "2", :shoe_size => "14", :points => "24", :rebounds => "12",
      :assists => "12", :steals => "4", :blocks => "5", :slam_dunks => "5"},
      {:number => "8", :shoe_size => "15", :points => "33", :rebounds => "3",
      :assists => "2", :steals => "1", :blocks => "1", :slam_dunks => "0"},
      {:number => "33", :shoe_size => "15", :points => "6", :rebounds => "12",
      :assists => "12", :steals => "7", :blocks => "5", :slam_dunks => "12"}
      ]
    hash
  end
  if team == game_hash[:home][:team_name]
    colors = game_hash[:home][:colors]
  elsif team == game_hash[:away][:team_name]
    colors = game_hash[:away][:colors]
  else
    colors = "That team cannot be found."
  end
end

def team_names
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => "0", :shoe_size => "16", :points => "22", :rebounds => "12",
      :assists => "12", :steals => "3", :blocks => "1", :slam_dunks => "1"}, 
      {:number => "30", :shoe_size => "14", :points => "12", :rebounds => "12",
      :assists => "12", :steals => "12", :blocks => "12", :slam_dunks => "7"},
      {:number => "11", :shoe_size => "17", :points => "17", :rebounds => "19",
      :assists => "10", :steals => "3", :blocks => "1", :slam_dunks => "15"},
      {:number => "1", :shoe_size => "19", :points => "26", :rebounds => "11",
      :assists => "6", :steals => "3", :blocks => "8", :slam_dunks => "5"},
      {:number => "31", :shoe_size => "15", :points => "19", :rebounds => "2",
      :assists => "2", :steals => "4", :blocks => "11", :slam_dunks => "1"}
      ]
    hash[:away][:players] = [
      {:number => "4", :shoe_size => "18", :points => "10", :rebounds => "1",
      :assists => "1", :steals => "2", :blocks => "7", :slam_dunks => "2"}, 
      {:number => "0", :shoe_size => "16", :points => "12", :rebounds => "4",
      :assists => "7", :steals => "22", :blocks => "15", :slam_dunks => "10"},
      {:number => "2", :shoe_size => "14", :points => "24", :rebounds => "12",
      :assists => "12", :steals => "4", :blocks => "5", :slam_dunks => "5"},
      {:number => "8", :shoe_size => "15", :points => "33", :rebounds => "3",
      :assists => "2", :steals => "1", :blocks => "1", :slam_dunks => "0"},
      {:number => "33", :shoe_size => "15", :points => "6", :rebounds => "12",
      :assists => "12", :steals => "7", :blocks => "5", :slam_dunks => "12"}
      ]
    hash
  end
  teams = [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(team)
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => "0", :shoe_size => "16", :points => "22", :rebounds => "12",
      :assists => "12", :steals => "3", :blocks => "1", :slam_dunks => "1"}, 
      {:number => "30", :shoe_size => "14", :points => "12", :rebounds => "12",
      :assists => "12", :steals => "12", :blocks => "12", :slam_dunks => "7"},
      {:number => "11", :shoe_size => "17", :points => "17", :rebounds => "19",
      :assists => "10", :steals => "3", :blocks => "1", :slam_dunks => "15"},
      {:number => "1", :shoe_size => "19", :points => "26", :rebounds => "11",
      :assists => "6", :steals => "3", :blocks => "8", :slam_dunks => "5"},
      {:number => "31", :shoe_size => "15", :points => "19", :rebounds => "2",
      :assists => "2", :steals => "4", :blocks => "11", :slam_dunks => "1"}
      ]
    hash[:away][:players] = [
      {:number => "4", :shoe_size => "18", :points => "10", :rebounds => "1",
      :assists => "1", :steals => "2", :blocks => "7", :slam_dunks => "2"}, 
      {:number => "0", :shoe_size => "16", :points => "12", :rebounds => "4",
      :assists => "7", :steals => "22", :blocks => "15", :slam_dunks => "10"},
      {:number => "2", :shoe_size => "14", :points => "24", :rebounds => "12",
      :assists => "12", :steals => "4", :blocks => "5", :slam_dunks => "5"},
      {:number => "8", :shoe_size => "15", :points => "33", :rebounds => "3",
      :assists => "2", :steals => "1", :blocks => "1", :slam_dunks => "0"},
      {:number => "33", :shoe_size => "15", :points => "6", :rebounds => "12",
      :assists => "12", :steals => "7", :blocks => "5", :slam_dunks => "12"}
      ]
    hash
  end
  nums = Array.new
  if team == game_hash[:home][:team_name]
    game_hash[:home][:players].each {|player|nums.push(player[:number].to_i)}
    nums.sort!
  elsif team == game_hash[:away][:team_name]
    game_hash[:away][:players].each {|player|nums.push(player[:number].to_i)}
    nums.sort!
  else
    nums = "That team cannot be found."
  end
end

def player_stats(player)
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => 0, :shoe => 16, :points => 22, :rebounds => 12,
      :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, 
      {:number => 30, :shoe => 14, :points => 12, :rebounds => 12,
      :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      {:number => 11, :shoe => 17, :points => 17, :rebounds => 19,
      :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      {:number => 1, :shoe => 19, :points => 26, :rebounds => 11,
      :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      {:number => 31, :shoe => 15, :points => 19, :rebounds => 2,
      :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    hash[:away][:players] = [
      {:number => 4, :shoe => 18, :points => 10, :rebounds => 1,
      :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, 
      {:number => 0, :shoe => 16, :points => 12, :rebounds => 4,
      :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
      {:number => 2, :shoe => 14, :points => 24, :rebounds => 12,
      :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
      {:number => 8, :shoe => 15, :points => 33, :rebounds => 3,
      :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
      {:number => 33, :shoe => 15, :points => 6, :rebounds => 12,
      :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
    hash
  end
  name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
  if name_array.index(player) < 5
    results = game_hash[:home][:players][name_array.index(player)]
  elsif name_array.index(player) > 4
    results = game_hash[:away][:players][(name_array.index(player) - 5)]
  else
    results = "That player cannot be found."
  end
end

def big_shoe_rebounds
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => 0, :shoe => 16, :points => 22, :rebounds => 12,
      :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, 
      {:number => 30, :shoe => 14, :points => 12, :rebounds => 12,
      :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      {:number => 11, :shoe => 17, :points => 17, :rebounds => 19,
      :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      {:number => 1, :shoe => 19, :points => 26, :rebounds => 11,
      :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      {:number => 31, :shoe => 15, :points => 19, :rebounds => 2,
      :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    hash[:away][:players] = [
      {:number => 4, :shoe => 18, :points => 10, :rebounds => 1,
      :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, 
      {:number => 0, :shoe => 16, :points => 12, :rebounds => 4,
      :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
      {:number => 2, :shoe => 14, :points => 24, :rebounds => 12,
      :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
      {:number => 8, :shoe => 15, :points => 33, :rebounds => 3,
      :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
      {:number => 33, :shoe => 15, :points => 6, :rebounds => 12,
      :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
    hash
  end
  shoe_array = Array.new
  game_hash.each do |team, value|
    game_hash[team][:players].each {|player|shoe_array.push(player[:shoe])}
  end
  bigshoe = shoe_array.sort[-1]
  bigshoe_index = shoe_array.index(bigshoe)
  if bigshoe_index < 5
    rebounds = game_hash[:home][:players][bigshoe_index][:rebounds]
  elsif bigshoe_index > 4
    rebounds = game_hash[:away][:players][bigshoe_index][:rebounds]
  end
end

def most_points_scored
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => 0, :shoe => 16, :points => 22, :rebounds => 12,
      :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, 
      {:number => 30, :shoe => 14, :points => 12, :rebounds => 12,
      :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      {:number => 11, :shoe => 17, :points => 17, :rebounds => 19,
      :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      {:number => 1, :shoe => 19, :points => 26, :rebounds => 11,
      :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      {:number => 31, :shoe => 15, :points => 19, :rebounds => 2,
      :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    hash[:away][:players] = [
      {:number => 4, :shoe => 18, :points => 10, :rebounds => 1,
      :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, 
      {:number => 0, :shoe => 16, :points => 12, :rebounds => 4,
      :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
      {:number => 2, :shoe => 14, :points => 24, :rebounds => 12,
      :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
      {:number => 8, :shoe => 15, :points => 33, :rebounds => 3,
      :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
      {:number => 33, :shoe => 15, :points => 6, :rebounds => 12,
      :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
    hash
  end
  name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
  points_array = Array.new
  game_hash.each do |team, value|
    game_hash[team][:players].each {|player|points_array.push(player[:points])}
  end
  bigpoints = points_array.sort[-1]
  hiscorer = name_array[points_array.index(bigpoints)]
end

def winning_team
  def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => 0, :shoe => 16, :points => 22, :rebounds => 12,
      :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, 
      {:number => 30, :shoe => 14, :points => 12, :rebounds => 12,
      :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      {:number => 11, :shoe => 17, :points => 17, :rebounds => 19,
      :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      {:number => 1, :shoe => 19, :points => 26, :rebounds => 11,
      :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      {:number => 31, :shoe => 15, :points => 19, :rebounds => 2,
      :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    hash[:away][:players] = [
      {:number => 4, :shoe => 18, :points => 10, :rebounds => 1,
      :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, 
      {:number => 0, :shoe => 16, :points => 12, :rebounds => 4,
      :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
      {:number => 2, :shoe => 14, :points => 24, :rebounds => 12,
      :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
      {:number => 8, :shoe => 15, :points => 33, :rebounds => 3,
      :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
      {:number => 33, :shoe => 15, :points => 6, :rebounds => 12,
      :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
    hash
  end
  total1 = 0
  total2 = 0
  game_hash[:home][:players].each {|players|total1 += players[:points]}
  game_hash[:away][:players].each {|players|total2 += players[:points]}
  if total1 > total2
    winner = game_hash[:home][:team_name]
  elsif total2 > total1
    winner = game_hash[:home][:team_name]
  else winner = "Tie"
  end
end

def player_with_longest_name
  name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
  length_array = name_array.sort_by {|x| x.length}
  answer = length_array[-1]
end

def long_name_steals_a_ton?
  def player_with_longest_name
   name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
    length_array = name_array.sort_by {|x| x.length}
    answer = length_array[-1]
  end
  def most_steals_scored
    def game_hash
    hash = Hash.new
    hash[:home] = {}
    hash[:away] = {}
    hash[:home][:team_name] = "Brooklyn Nets"
    hash[:away][:team_name] = "Charlotte Hornets"
    hash[:home][:colors] = ["Black", "White"]
    hash[:away][:colors] = ["Turquoise", "Purple"]
    hash[:home][:players] = [
      {:number => 0, :shoe => 16, :points => 22, :rebounds => 12,
      :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, 
      {:number => 30, :shoe => 14, :points => 12, :rebounds => 12,
      :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      {:number => 11, :shoe => 17, :points => 17, :rebounds => 19,
      :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      {:number => 1, :shoe => 19, :points => 26, :rebounds => 11,
      :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      {:number => 31, :shoe => 15, :points => 19, :rebounds => 2,
      :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    hash[:away][:players] = [
      {:number => 4, :shoe => 18, :points => 10, :rebounds => 1,
      :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, 
      {:number => 0, :shoe => 16, :points => 12, :rebounds => 4,
      :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
      {:number => 2, :shoe => 14, :points => 24, :rebounds => 12,
      :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
      {:number => 8, :shoe => 15, :points => 33, :rebounds => 3,
      :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
      {:number => 33, :shoe => 15, :points => 6, :rebounds => 12,
      :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
    hash
    end
    name_array = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry", "Jeff Adrien", "Bismack Biyombo", "DeSagna Diop", "Ben Gordon", "Kemba Walker"]
    steals_array = Array.new
    game_hash.each do |team, value|
      game_hash[team][:players].each {|player|steals_array.push(player[:steals])}
    end
    bigsteals = steals_array.sort[-1]
    histealer = name_array[steals_array.index(bigsteals)]
  end
  player_with_longest_name == most_steals_scored
end









