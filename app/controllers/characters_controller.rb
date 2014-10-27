class CharactersController < ApplicationController
	def index
		@characters = Character.all
	end

	def show
		@character = Character.find(params[:id])
	end

	def new
		@character = Character.new
	end

	def create
		@character = Character.new(char_params)
	end


	def edit

	end

	def destroy
	end
	
private
	def char_params
		params.require(:character).permit(:user_id)
	end
end
