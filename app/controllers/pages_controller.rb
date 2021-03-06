class PagesController < ApplicationController

before_action :set_kitten_url, only: [:kitten, :kittens]

  def about
    @header = "This is the About page"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome
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

  def secrets
    if params[:magic_word] != 'magic'
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to kitten_path(400)
    end

  end

end
