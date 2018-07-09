require 'bundler'

Bundler.setup
Bundler.require

class CTA < Sinatra::Base

  set :protection, :except => :frame_options
  
  get '/:user' do
    @uid = params[:user]
    @scenario = params[:scenario]
    @title = params[:title]
    @course = params[:course]

    erb :index
  end

end

run CTA