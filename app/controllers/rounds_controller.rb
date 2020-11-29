class RoundsController < ApplicationController

  def index 
    @rounds = Round.all
    # render :index
  end

  def new 
    @round = Round.new
  end

  def create
    binding.pry
    round = @round.build
    # if @round.save
    #   binding.pry
    #   redirect_to :round_path
    # else 
    #   redirect_to '/rounds/new'
    # end
  end

  def show
    current_round
  end

  def edit
    current_round
  end

  def update
    #if @round.save
  end

  def delete
    #@round.destroy ? do I want to do this? Do I want a history page or something?
  end

  private 

  def current_round
    @round = Round.find(params[:id])
  end

end
