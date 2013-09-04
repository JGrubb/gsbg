class ShowsController < ApplicationController
  def index
    @shows = Show.where("date >= ?", Date.today)
  end

  def show
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.create(show_params)
    flash[:notice] = "Good job"
    redirect_to shows_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def show_params
    params.require(:show).permit(:venue, :date, :address, :city, :state, :info, :tickets_link, :info_link)
  end

end
