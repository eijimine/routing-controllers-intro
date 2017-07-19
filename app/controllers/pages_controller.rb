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

end
