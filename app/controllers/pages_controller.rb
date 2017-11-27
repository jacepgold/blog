class PagesController < ApplicationController
  def index
    # All Blog Pages
    @pages = Page.all
  end

  def show
    # Single Blog Page
    @page = Page.find(params[:id])
  end

  def edit
    # Shows a pre filled form to edit the page
    @page = Page.find(params[:id])
  end

  def update
    # Take data from the form and update the page in our database
    @page = Page.find(params[:id])
    if @page.update(title: params[:page][:title],
                    author: params[:page][:author],
                    content: params[:page][:content],
                    public: params[:page][:public])
      redirect_to page_path(@page)
      # Successful update
    else
      # Failed update
      render :edit
    end
  end

  def new
    # Shows a blank form to create a new page
    @page = Page.new
  end

  def create
    # Take data from the form and create a new page in our database
    @page = Page.new(title: params[:page][:title],
                    author: params[:page][:author],
                    content: params[:page][:content],
                    public: params[:page][:public])
    if @page.save
      # Success
      redirect_to pages_path
    else
      # Fail
      render :new
    end
  end

  def destroy
    # Finds the page by ID and removes it from the database
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end
end
