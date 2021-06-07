class CountsController < ApplicationController
  def index
  end

  def new
    @count = Count.new
  end

  def create
    count = Count.new(count_params)
    if count.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  private
  def count_params
    params.require(:count).permit(:step,:date)
  end
end