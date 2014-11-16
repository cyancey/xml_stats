module XmlStats
  include HTTParty
  extend self
  base_uri 'https://erikberg.com'
  headers 'Authorization' => "Bearer #{ENV['XML_STATS_ACCESS_TOKEN']}",
          'User-Agent' => 'Chris'

  def events
    event_data = self.get('/events.json').response.body
    JSON.parse(event_data)
  end

  def nba_standings
    standings_data = self.get('/nba/standings.json').response.body
    JSON.parse(standings_data)['standing']
  end

  def nba_ppg_leaders
    ppg_leader_data = self.get('/nba/leaders/points_per_game.json').response.body
  end

end