class Sportsteam
  def initialize (team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def set_coach(name)
    @coach = name
    return @coach
  end

end
