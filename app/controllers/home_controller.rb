class HomeController < ApplicationController
  def index
    return if !params[:movie]
    @search = SearchMovie.new(params[:movie]).perform
    configuration = Tmdb::Configuration.new
    @img_url = configuration.base_url + configuration.poster_sizes[2]
  end
  def new

  end
  def create


  end
end
