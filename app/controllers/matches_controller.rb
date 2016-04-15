class MatchesController < ApplicationController
  # before_action :set_match, only: [:show, :edit, :update, :destroy]
  # before_action :authorize, except: [:index, :show]

    def index
    @matches = Match.all

    if current_user.preference == "Women" || current_user.preference == "women"
      @matches = @matches.select { |match| match.gender == "Female"}
    elsif
      current_user.preference == "Men" || current_user.preference == "men"
      @matches = @matches.select { |match| match.gender == "Male"}
    else
      @matches = Match.all
    end

    end

    def show
    @match = Match.find(params[:id])
    end

    def new
    @comment = Comment.new
    end

end
