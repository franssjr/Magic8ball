class HistoriesController < ApplicationController
	def new
		@request_num = Message.count - 20
    	@the_history = Array.new
   		loop_count = 0
   		@view_loop = 0

    	while(loop_count < @request_num)
      		@the_history.push(Message.find(loop_count + 21).the_message)
      		loop_count +=1
      	end	
	end
end
