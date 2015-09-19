class HistoriesController < ApplicationController
	def show
		#@num_of_messages = Message.all.length
		@num_of_histories = History.all.length
		@all_histories = History.all
		@view_loop = 0
	end
end
