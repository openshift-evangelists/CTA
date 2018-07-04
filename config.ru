require 'bundler'

Bundler.setup
Bundler.require

class CTA < Sinatra::Base

  get '/:user' do
    @uid = params[:user]
    @scenario = params[:scenario]
    @title = params[:title]
    @course = params[:course]

    erb :index
  end

end

run CTA