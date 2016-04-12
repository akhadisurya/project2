class MatchesController < ApplicationController
  # before_action :set_match, only: [:show, :edit, :update, :destroy]
  # before_action :authorize, except: [:index, :show]

    def index
    @matches = Match.all
    end

    def show
    @match = Match.find(params[:id])
    @comment = Comment.new

    end

    def new
    @comment = Comment.new
    end

end
