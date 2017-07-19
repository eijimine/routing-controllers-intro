class PagesController < ApplicationController

before_action :set_kitten_url, only: [:kitten, :kittens]

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

  end

  def kittens
    
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
