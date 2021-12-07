# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

# Sinatra class
class DiaryManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  post '/view_diary_entries' do
    erb :view_diary_entries
  end
  run! if app_file == $0
end
