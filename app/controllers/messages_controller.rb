class MessagesController < ApplicationController
	def history
		
	end

	def show
		@request_num = Message.count - 20
    	@the_history = Array.new
   		loop_count = 0
   		@view_loop = 0

    	while(loop_count < @request_num)
      		#@the_history.push(Message.find(loop_count + 20))
      		#puts Message.find(loop_count +20).the_message
      		#output = @the_history[loop_count + 1].the_message
      		#puts output

      		@the_history.push(Message.find(loop_count + 21).the_message)
      		#puts @the_history[0]

      		loop_count +=1
      	end	
	end
end
