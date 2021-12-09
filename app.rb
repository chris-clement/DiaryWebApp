# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/diary_entry'

# Sinatra class
class DiaryManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  post '/view_diary_entries' do
    # @diary_title = params[:title]
    # @diary_content = params[:content]
    DiaryEntry.add_entry(params[:title], params[:content])
    erb :view_diary_entries
  end
  run! if app_file == $0
end
