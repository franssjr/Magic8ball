class WelcomeController < ApplicationController

	def index
		@all_messages = Message.all.shuffle
		
		@all_messages[1].histories.create
	end
end
