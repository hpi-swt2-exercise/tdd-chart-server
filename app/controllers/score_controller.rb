class ScoreController < ActionController::Base

  def add
    @score = Score.create!(score_params)
    render json: @score
  end
  
  private
  
  def score_params
    params.require(:user)
    params.require(:score)
    params.permit(:user, :score)
  end
  
end
