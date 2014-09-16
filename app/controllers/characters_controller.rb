class CharactersController < ApplicationController
	def index
		@users = Character.all
	end

	def mine
		@characters = Character.where(:user_id == :current_user)
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
	end

	def edit

	end

	def destroy
	end

	def char_params
		params.require(:character).permit(:user_id)
	end
end
