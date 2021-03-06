# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(playr) 
  game_hash.each do |hoaw,specs|
    specs[:players].each_with_index do |val, index| 
      if val[:player_name] == playr 
        puts val[:points] 
        return val[:points]
      end 
    end 
  end 
end 

num_points_scored("Kemba Walker") 

def shoe_size (playr)
  game_hash.each do |hoaw,specs|
    specs[:players].each_with_index do |val, index| 
      if val[:player_name] == playr 
        puts val[:shoe] 
        return val[:shoe]
      end 
    end 
  end 
end 

def team_colors (team) 
  game_hash.each do |hoaw,specs| 
    if specs[:team_name] == team 
      return specs[:colors]
    end 
  end 
end 

def team_names 
  arr = [] 
  game_hash.each do |hoaw,specs| 
    arr << specs[:team_name] 
  end 
  puts arr 
  return arr 
end 

def player_numbers (team)
  arr = []
  game_hash.each do |hoaw,specs| 
    if specs[:team_name] == team 
      specs[:players].each do |playr| 
        arr << playr[:number] 
      end 
    end 
  end 
  return arr 
end 

def player_stats (pname) 
  game_hash.each do |hoaw,specs|
    specs[:players].each_with_index do |val, index| 
      if val[:player_name] == pname  
        puts val
        return val
      end 
    end 
  end 
end 

player_stats("Alan Anderson") 

def big_shoe_rebounds 
  bigfoot = "Allan Anderson"
  bigsize = game_hash[:home][:players][0][:shoe] 
  bigbound = game_hash[:home][:players][0][:rebounds] 
  game_hash.each do |hoaw,specs|
    specs[:players].each_with_index do |val, index| 
      if val[:shoe] > bigsize  
        bigsize = val[:shoe] 
        bigfoot = val[:player_name]
        bigbound = val[:rebounds]
      end 
    end 
  end
  puts bigfoot 
  puts bigbound 
  return bigbound
end 

big_shoe_rebounds

def most_points_scored 
  splayer = "Allan Anderson"
  spoints = game_hash[:home][:players][0][:points] 
  game_hash.each do |hoaw,specs|
    specs[:players].each_with_index do |val, index| 
      if val[:points] > spoints  
        spoints = val[:points] 
        splayer = val[:player_name]
      end 
    end 
  end
  puts splayer  
  return splayer 
end 

most_points_scored

def winning_team
  p = 0 
  teamn = "" 
  game_hash.each do |hoaw, specs| 
    pteam = 0 
    specs[:players].each do |playr| 
      pteam += playr[:points] 
    end 
    if pteam > p 
      p = pteam 
      teamn = specs[:team_name]
    end 
  end 
  puts teamn 
  puts p 
  return teamn 
end 

winning_team 

def player_with_longest_name
  playermax = "Allan Anderson" 
  lenmax = 0 
  game_hash.each do |hoaw, specs| 
    specs[:players].each do |playr| 
      len = playr[:player_name].length 
      if len > lenmax 
        lenmax = len 
        playermax = playr[:player_name] 
      end 
    end 
  end 
  puts playermax
  puts lenmax 
  return playermax 
end 

player_with_longest_name

def long_name_steals_a_ton? 
  longman = player_with_longest_name 
  stealman = "Allan Anderson" 
  stealmax = 0 
  game_hash.each do |hoaw, specs| 
    specs[:players].each do |playr| 
      if playr[:steals] > stealmax 
        stealmax = playr[:steals] 
        stealman = playr[:player_name] 
      end 
    end 
  end 
  puts stealman 
  puts stealmax 
  if stealman == longman
    puts "true"
    return true 
  end 
  return "I guess stealman isn't longman."
end 

long_name_steals_a_ton? 
