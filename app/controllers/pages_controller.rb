class PagesController < ApplicationController

  def about
    @header = "This is the About page"
  end

  def contest
    @header = "This is the Contest page"
  end

  def welcome
    @header = "This is the Welcome page"
    # render :about
  end

  def kitten
    @header = "This is the Welcome page"
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
