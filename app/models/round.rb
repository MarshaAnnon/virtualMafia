# require 'pry'
class Round < ApplicationRecord
  has_many :players


  def assign_roles
    #determine how many players have joined the game and assign all the types. assign everyone else to 
    roles = generate_roles
    self.players.each do |player| 
        index = rand(roles.length)
        player.role = roles[index]
        roles.delete_at(index)
      end
  end #WORKING

  private 

  def num_of_players
    self.players.length
  end #WORKING

  # POSSIBLY GIVE NARRATOR OPTION TO DETERMINE HOW MANY MAFIA. OPTIONAL PARAMETER??
  def generate_roles #generate roles needed for this round based on how many players join the game.
    roles = ['citizen', 'detective', 'doctor', 'mafia', 'narrator'] 
    if num_of_players > 20 
      (num_of_players / 5).times do 
        roles.push('mafia')
      end
      roles.push('detective')
      roles.push('doctor')
    elsif num_of_players > 15 # If more than 15 players, add an additional detective and doctor and 1 additional mafia for every 5 players.
      2.times do 
        roles.push('mafia')
      end
    elsif num_of_players > 10 # If more than 10 but less than 15 players, add an additional mafia and detective to the game.
      roles.push('mafia')
    elsif num_of_players < 10 
      puts "You don't have enough players. You need at least 10 for this to be fun! Add #{10 - num_of_players} to start."
    end
    #rem represents the number of remaining players after each roles has been filled once including the extra mafia. 
    # This helps determine how many additional citizens need to be added
    rem = num_of_players - roles.length
    rem.times do 
      roles.push('citizen')
    end
    roles.shuffle
  end #WORKING

  def winner 
    
  end

end
