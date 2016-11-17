class ApplicationController < ActionController::Base
  
  def index
    @entries = Score.all.group_by { |e| e.user }
  end
  
  def csv
    @entries = Score.all.order(:user,:time)
  end

  private
  
  def chart_params
    params.permit(:user, :start, :end)
  end
  
end
