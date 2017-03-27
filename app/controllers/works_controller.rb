class WorksController < ApplicationController
  before_action :authenticate_user!

  def index
    @works = Work.all
  end

  def show
    @categories = Category.all
  end 

  def new
    @work = Work.new
  end
end
