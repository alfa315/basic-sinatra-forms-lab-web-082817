require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @team_name = params["name"]
    @coach = params["coach"]
    @point_guard = params["pointguard"]
    @shooting_guard = params["shootingguard"]
    @small_forward = params["smallforward"]
    @power_forward = params["powerforward"]
    @center = params["center"]
    erb :team
  end

end
