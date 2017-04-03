class CoachingController < ApplicationController
  def ask
    # render :ask
    # app/views/coaching/ask.html.erb
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  private

  def coach_answer(query)
    if query[-1] != "?"
      "I don't care, get dressed and go to work!"
    elsif query[-1] == "?"
      "Silly question, get dressed and go to work!"
    else
      "you dont make sense"
    end
  end
end
