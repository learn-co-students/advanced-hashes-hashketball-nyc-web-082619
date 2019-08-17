def game_hash
  result = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
          :player_name =>"Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        {
          :player_name =>"Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        {
          :player_name =>"Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        {
          :player_name =>"Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        {
          :player_name =>"Jason Terry",
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
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {
          :player_name =>"Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        {
          :player_name =>"Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        {
          :player_name =>"DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        {
          :player_name =>"Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        {
          :player_name =>"Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }
      ]
    }
  }
  result
end

def num_points_scored(playerName)
  points = 0 
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:player_name] == playerName
        points = details[:points]
      end
    end
  end
  return points
end

def shoe_size(playerName)
  size = 0 
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:player_name] == playerName
        size = details[:shoe]
      end
    end
  end
  return size
end

def team_colors(teamName)
  teamColors = []
  result = game_hash()
  result.each do |side, desc|
      if desc[:team_name] == teamName
        teamColors = desc[:colors]
      end
  end
  return teamColors
end

def team_names
  teamName = []
  result = game_hash()
  result.each do |side, desc|
    teamName.push(desc[:team_name])
  end
  return teamName
end

def player_numbers(teamName)
  playerNumbers = []
  result = game_hash()
  result.each do |side, desc|
    if desc[:team_name] == teamName
      desc[:players].each do |details|
        playerNumbers.push(details[:number])
      end
    end
  end
  return playerNumbers
end

def player_stats(playerName)
  playerStats = {}
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:player_name] == playerName
        playerStats = details
        playerStats.delete(playerStats.keys.first)
      end
    end
  end
  return playerStats
end

def big_shoe_rebounds
  rebounds = 0 
  size = 0 
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:shoe] > size
        rebounds = details[:rebounds]
        size = details[:shoe]
      end
    end
  end
  return rebounds
end

def most_points_scored
  mostPoint = ""
  point = 0
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:points] > point
        point = details[:points]
        mostPoint = details[:player_name]
      end
    end
  end
  return mostPoint
end

def winning_team
  home = ""
  away = ""
  homePoint = 0 
  awayPoint = 0 
  result = game_hash()
  result.each do |side, desc|
    if side == :home 
      desc[:players].each do |details|
        homePoint += details[:points]
      end
      home = desc[:team_name]
    else 
      desc[:players].each do |details|
        awayPoint += details[:points]
      end
      away = desc[:team_name]
    end
  end
  return homePoint > awayPoint ? home : away  
end

def player_with_longest_name
  longestName = ""
  nameLength = 0 
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:player_name].length > nameLength
        longestName = details[:player_name]
        nameLength = details[:player_name].length 
      end
    end
  end
  return longestName
end

def long_name_steals_a_ton?
  steals = 0 
  mostStealPlayer = ""
  result = game_hash()
  result.each do |side, desc|
    desc[:players].each do |details|
      if details[:steals] > steals
        mostStealPlayer = details[:player_name]
        steals = details[:steals]
      end
    end
  end
  if mostStealPlayer == player_with_longest_name()
    return true
  else
    return false 
  end 
end







