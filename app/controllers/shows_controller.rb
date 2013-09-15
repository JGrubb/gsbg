class ShowsController < ApplicationController
  def index
    @shows = Show.where("date >= ?", Date.today).order(date: :asc)
  end

  def show
    @show = Show.find params[:id]
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.create(show_params)
    flash[:notice] = "Good job, #{@show.date} is created."
    redirect_to shows_path
  end

  def edit
    @show = Show.find params[:id]
  end

  def update
    @show = Show.find params[:id]
    @show.update(show_params)
  end

  def destroy
    @show = Show.find params[:id]
    if @show.destroy
      flash[:notice] = "show deleted."
      redirect_to shows_path
    else
      flash[:error] = "Error, somehow."
      redirect_to shows_path
    end
  end

  private

  def show_params
    params.require(:show).permit(:venue, :date, :address, :city, :state, :info, :tickets_link, :info_link)
  end

end
