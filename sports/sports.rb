class Team

attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  # def add_player(new_player)
  #   @players.push(new_player)
  #   return @players.length
  # end
  #

  def find_player(player)
    if @players.include?(player)
      return true
    else
      return false
    end
  end

  def points_change(winloss)
    if winloss == "Win"
      @points += 1
    end
    return @points
  end



end
# Add a method that takes in a string of a player’s name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
