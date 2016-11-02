class PokemonsController < ApplicationController

  # def index
		# @trainers = Trainer.all
  # end

  def capture 
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.trainer_id = current_trainer.id
  	@pokemon.save!
  	redirect_to '/'
  end 

  def damage 
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.health -= 10
  	@pokemon.save!
    if @pokemon.health <= 0
    	@pokemon.destroy!
    end
  	redirect_to trainer_path(id: @pokemon.trainer)
  end

  def new
  	@pokemon = Pokemon.new
  end  

  def create
  	@pokemon = Pokemon.new()
  	@pokemon.name = params[:pokemon][:name]
  	@pokemon.level = 1
  	@pokemon.health = 100
  	@pokemon.trainer = current_trainer
  	if @pokemon.save
  		redirect_to trainer_path(id: @pokemon.trainer)
  	else
  		flash[:error] = @pokemon.errors.full_messages.to_sentence
  		redirect_to new_path
  	end 

  end

end