class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

   def create
    if params[:answer_id]
        @commentable = Answer.find(params[:answer_id])
    else
        @commentable = Question.find(params[:question_id])
    end

    @comment = @commentable.comments.build(comment_params)
  end

end
