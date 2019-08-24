# Write your code here!
require 'pry'

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => [
        {:name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, 
        {:name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        {:name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        {:name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        {:name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
      :players => [
        {:name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, 
        {:name =>"Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
        {:name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        {:name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        {:name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}]
      
    }
  }
end 



def num_points_scored(player_name)
  all_players = game_hash.values.collect do |team|
    team[:players]
  end.flatten

  all_players.each do |player|
    return player[:points] if player[:name] == player_name
  end
end

def shoe_size(player_name)
  all_players = game_hash.values.collect do |team|
    team[:players]
  end.flatten

  all_players.each do |player|
    return player[:shoe] if player[:name] == player_name
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

def player_numbers(name_of_team)
  numbers = []
  game_hash.each do |team, chars|
    if name_of_team == game_hash[team][:team_name]
      game_hash[team][:players].each do |stats|
        numbers.push(stats[:number])
      end
    end
  end
  return numbers
end

def player_stats(player_name)
  temp = {}
  all_players = game_hash.values.collect do |team|
    team[:players]
  end.flatten

  all_players.each do |player|
    if player[:name] == player_name
      temp = player
    end
  end
  temp.slice(:assists, :blocks, :number, :points, :rebounds, :shoe, :slam_dunks, :steals)
end

def big_shoe_rebounds
  names = []
  shoe_sizes = []

  game_hash.each do |team, chars|
    game_hash[team][:players].each do |stats|
      names.push(stats[:name])
      shoe_sizes.push(stats[:shoe])
    end
  end

  largest = -1
  shoe_sizes.each do |x|
    if x > largest
      largest = x
    end
  end
  
  player_with_largest = names[shoe_sizes.index(largest)]
  
  game_hash.each do |team, chars|
    game_hash[team][:players].each do |stats|
     if player_with_largest == stats[:name]
       return stats[:rebounds]
  
      end
    end
  end
end

