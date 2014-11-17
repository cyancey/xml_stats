class GamesController < ApplicationController

  def index
    @games = XmlStats.events['event']
    standings = XmlStats.nba_standings.map{|standing| NbaStanding.new(standing)}
    @today = Date.today.in_time_zone('Pacific Time (US & Canada)')
    @nba_games = @games.select {|game| game['sport'] == 'NBA'}.map {|game| NbaGame.new(game)}.select {|game| game.start_date_time.to_date.in_time_zone('Pacific Time (US & Canada)') == @today}
    @east_standings = standings.select{|standing| standing.conference == 'EAST'}.sort_by {|standing| standing.playoff_seed}
    @west_standings = standings.select{|standing| standing.conference == 'WEST'}.sort_by {|standing| standing.playoff_seed}
  end
end