class PagesController < ApplicationController
  def index
    # All Blog Pages
    @pages = Page.all
  end

  def show
    # Single Blog Page
  end

  def edit
    # Shows a pre filled form to edit the page
  end

  def update
    # Take data from the form and update the page in our database
  end

  def new
    # Shows a blank form to create a new page
    @page = Page.new
  end

  def create
    # Take data from the form and create a new page in our database
  end

  def destroy
    # Finds the page by ID and removes it from the database
  end
end
