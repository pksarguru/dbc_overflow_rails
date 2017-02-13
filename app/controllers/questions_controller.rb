class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.update_attributes(:user_id => current_user.id)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:title, :body)
    end


end
