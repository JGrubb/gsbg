class HomeController < ApplicationController
  def index
    @shows = Show.where("date >= ?", Date.today).limit(3)
  end
end
