class NbaGame
  attr_reader :start_date_time, :home_team, :away_team
  def initialize(args = {})
    @start_date_time = DateTime.parse(args['start_date_time']).in_time_zone('Pacific Time (US & Canada)')
    @home_team = "#{args['home_team']['first_name']} #{args['home_team']['last_name']}"
    @away_team = "#{args['away_team']['first_name']} #{args['away_team']['last_name']}"
  end
end