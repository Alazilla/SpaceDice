class CharactersController < ApplicationController
	def index
		@users = Character.all
	end
end
