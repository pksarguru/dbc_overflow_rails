class CommentsController < ApplicationController
  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @question.comments.build(comment_params)
    @comment = @question.answers[0].comments.build(comment_params)
  end

end
