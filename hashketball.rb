require "pry"

def game_hash
new =
{
  :home =>
  {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players =>
      [
        {:name => "Alan Anderson", :number  => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1 },
          {:name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7 },
          {:name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
          {:name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
          {:name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    },
     :away =>
     {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise", "Purple"],
       :players =>
         [
          {:name => "Jeff Adrien", :number  => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2 },
           {:name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10 },
           {:name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
           {:name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
           {:name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}

         ]
   }
}
new
end

def num_points_scored (name)
  result = ""
  game_hash.each do |team, info|
      info[:players].each do |player_name|
  			if player_name[:name] == name
  				 result = player_name[:points]
  			end
  		end
  	end
    result
end

def shoe_size(name)
  result = ""
  game_hash.each do |team, info|
      info[:players].each do |player_name|
  			if player_name[:name] == name
  				result =  player_name[:shoe]
  			end
  		end
  	end
  result
end

def team_colors(team)
  if game_hash[:home][:team_name] == team
    return game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team
    return game_hash[:away][:colors]
  end
end

def team_names
team_names = ["#{game_hash[:home][:team_name]}","#{game_hash[:away][:team_name]}"].to_a
end

def player_numbers(team)
  result = []
  if game_hash[:home][:team_name] == team
      game_hash[:home][:players].each do |player|
	       result.push(player[:number])
       end
   else
      game_hash[:away][:players].each do |player|
          result.push(player[:number])
   end
end
result
end

def player_stats(name)
  result = {}
    game_hash.each do |team, info|
        info[:players].each do |player_name|
    			if player_name[:name] == name
    				 result = player_name.reject!{|k,v| k == :name}
    			end
    		end
    	end
  	result
end

def big_shoe_rebounds
  i = 0
  result = 0
  game_hash.each do |team, info|
  	 info[:players].each do |stats|
  		 shoe_size = stats[:shoe]
  		 if shoe_size > i
  			 i = shoe_size
  			 result = stats[:rebounds]
  	    end
      end
    end
    result
end

def most_points_scored
  i = 0
  result = 0
  game_hash.each do |team, info|
  	 info[:players].each do |stats|
  		 points = stats[:points]
  		 if points > i
  			 i = points
  			 result = stats[:name]
  	    end
      end
    end
    result
end

def winning_team
  home = 0
  away = 0
  game_hash[:home][:players].each do |player|
    home += player[:points]
  end
  game_hash[:away][:players].each do |player|
    away += player[:points]
  end
  result = home > away ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
  result
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
