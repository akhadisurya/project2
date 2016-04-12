class MatchesController < ApplicationController


    def index
    @matches = Match.all
    end

    def show
    @match = Match.find(params[:id])
    @comment = @match.comments.build(:user_id => current_user.id)

    end

    def new
    @comment = Comment.new
    end

end
