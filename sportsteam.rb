class Sportsteam
  attr_reader :team_name, :players, :coach
  attr_writer :coach
  def initialize (team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(name)
  #   @coach = name
  #   return @coach
  # end

  def check_player_name(player_name)
    for name in @players
      if name == player_name
        return true
      end
    end
    return false
  end

  def points_update(result)
    if result == "win"
      @points += 1
    elsif result == "lost"
      @points -= 1
    end
  end


end
