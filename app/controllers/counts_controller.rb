class CountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @counts=Count.where(user_id: current_user.id)
  end

  def new
    @count = Count.new
  end

  def create
    count = Count.new(count_params)
    count.user_id = current_user.id
    if count.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def home
    @counts =Count.where(user_id: current_user.id,"created_at >= ?", Date.today)
  end

  def document
  end

  def present
  end

  private
  def count_params
    params.require(:count).permit(:step, :date)
  end
end