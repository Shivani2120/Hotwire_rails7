class PlayersController < ApplicationController
    before_action :set_player, only: %i[ show edit update destroy ]

    def index
        @players = Player.all
    end

    def new
        @player = Player.new
    end

    def edit
    end 

    def show
    end 
    
    def create
      @player = Player.new(player_params)
      if @player.save
        redirect_to @player
      else 
        render :new
      end 
    end 

    def update
        if @player.update(player_params)
            redirect_to @player
        else 
            render :edit
        end 
    end 
       
    def destroy
        @player.destroy
        respond_to do |format|
            format.html { redirect_to players_url, notice: "Player was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
   
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:name, :place, :email, :contact, :date_of_birth)
    end
end
