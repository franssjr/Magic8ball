class HistoriesController < ApplicationController
	def new
	end

	def show
		@first_message = History.first.belongs_to
	end
end
