class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]
  before_action :only_my_comments, only: [:edit, :update, :destroy]

    def index
    @comments = Comment.all
    end

    def new
    @comment = Comment.new
    end

    def create
    @comment = Comment.new(params.require(:comment).permit(:content, :user_id, :match_id))
    @comment.user = current_user
        if @comment.save
          redirect_to match_path(@comment.match)
       else
          render :new
      end
    end


  def edit
    @comment = Comment.find(params[:id])
  end

  def update
     @comment = Comment.find(params[:id])

        if @comment.update_attributes(params.require(:comment).permit(:content, :user_id, :match_id))
              redirect_to match_path(@comment.match)
        else
               render :edit
       end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to match_path(@comment.match)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :user_id, :match_id)
    end

    def only_my_comments
      redirect_to match_path(@comment.match), notice: "you can't edit someone elses tweets" if (current_user != @comment.user)
    end

end
