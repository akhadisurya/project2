class CommentsController < ApplicationController

    def index
    @comments = Comment.all
    end

    def new
    @comment = Comment.new
    end

    def create
    @comment = Comment.new(params.require(:comment).permit(:content, :user_id, :match_id))

        if @comment.save
          redirect_to match_path(@comment.match)
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
