class PagesController < ApplicationController
  def show
    @page = Page.find_by_slug params[:id]
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new page_params
    @page.create_slug
    @page.save
    flash[:notice] = "#{@page.title} created."
    redirect_to show_page_path @page
  end

  def edit
    @page = Page.find_by_slug params[:id]
  end

  def update
    @page = Page.find_by_slug params[:id]
    @page.create_slug
    @page.update_attributes page_params
    @page.save
    flash[:notice] = "#{@page.title} updated."
    redirect_to show_page_path @page
  end

  def delete
    @page = Page.find params[:id]
    if @page.delete
      flash[:notice] = "Page deleted"
      redirect_to root_path
    else
      flash[:error] = "Aye problema"
      redirect_to page_path @page
    end
  end

  private

  def page_params
    params.require(:page).permit(:title, :body)
  end

end
