class CommentsController < ApplicationController

    def new
    @comment = Comment.new
    end


    def create
    @comment = Comment.new(params.require(:comment).permit(:content, :user_id, :match_id))

        if @comment.save
          redirect_to current_user
       else
          render :new
      end
    end


  def edit
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to current_user
  end

end
