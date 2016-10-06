class ScoreController < ActionController::Base

  def add
    @score = Score.create!(score_params)
    render json: @score
  end
  
  private
  
  def score_params
    params.require(:user, :score)
  end
  
end
