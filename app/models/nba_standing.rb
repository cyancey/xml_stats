class NbaStanding
  attr_reader :team, :rank, :conference, :games_back, :playoff_seed
  def initialize(args = {})
    @team = "#{args['first_name']} #{args['last_name']}"
    @rank = args['rank']
    @conference = args['conference']
    @games_back = args['games_back']
    @playoff_seed = args['playoff_seed']
  end
end