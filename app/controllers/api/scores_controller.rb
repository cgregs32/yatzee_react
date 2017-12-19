class Api::ScoresController < ApplicationController
  #requires user to be logged in before it can access this data
  before_action :authenticate_user!

  def index
    @scores = Score.all.order(value: :desc)
  end

  # def create
  #   score = current_user.scores.new(score_params)
  #   if score.save
  #     render json: {email: current_user.email,
  #                   score: score.value,
  #                   nickname: current_user.nickname,
  #                   created_at: score.created_at}
  #   else
  #     json_error(score)
  #   end
  # end

  #with jbuilder
  def create
    @score = current_user.scores.create(score_params)
    if @score.save
      render 'show'
    else
      json_error(@score)
    end
  end

  private
    def score_params
      params.require(:score).permit(:value)
    end

end
