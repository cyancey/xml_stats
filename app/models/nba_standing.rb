class NbaStanding
  attr_reader :team, :rank, :conference, :games_back, :playoff_seed, :wins, :losses
  def initialize(args = {})
    @team = "#{args['first_name']} #{args['last_name']}"
    @rank = args['rank']
    @conference = args['conference']
    @games_back = args['games_back']
    @playoff_seed = args['playoff_seed']
    @wins = args['won']
    @losses = args['lost']
  end

end