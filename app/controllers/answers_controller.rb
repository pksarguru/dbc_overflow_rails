class AnswersController < ApplicationController
  def create
    @question = Question.find_by(id: params[:question_id])
    @answer = @question.answers.build(answer_params)
    @answer.user_id = current_user.id

    if @answer.save
      redirect_to @question
    else
      render 'questions/show'
    end
  end

  def show
    @answer = Answer.find_by(id: params[:id])
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :body)
    end
end
