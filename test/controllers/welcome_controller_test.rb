require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "histories_created" do

  	Message.create(the_message: "It is certain")
	Message.create(the_message: "It is decidedly so")
	Message.create(the_message: "Without a doubt")
	Message.create(the_message: "Yes definitely")
	Message.create(the_message: "You may rely on it")
	Message.create(the_message: "As I see it yes")
	Message.create(the_message: "Most likely")
	Message.create(the_message: "Outlook good")
	Message.create(the_message: "Yes")
	Message.create(the_message: "Signs point to yes")
	Message.create(the_message: "Reply hazy try again")
	Message.create(the_message: "Ask again later")
	Message.create(the_message: "Better not tell you now")
	Message.create(the_message: "Cannot predict now")
	Message.create(the_message: "Concentrate and ask again")
	Message.create(the_message: "Don't count on it")
	Message.create(the_message: "My reply is no")
	Message.create(the_message: "My sources say no")
	Message.create(the_message: "Outlook not so good")
	Message.create(the_message: "Very doubtful")

	get :index
    get :index
    get :index

    all_histories = History.all

    assert all_histories.count == 3
  end

  test "histories_contained_in_messages" do

	Message.create(the_message: "It is certain")
	Message.create(the_message: "It is decidedly so")
	Message.create(the_message: "Without a doubt")
	Message.create(the_message: "Yes definitely")
	Message.create(the_message: "You may rely on it")
	Message.create(the_message: "As I see it yes")
	Message.create(the_message: "Most likely")
	Message.create(the_message: "Outlook good")
	Message.create(the_message: "Yes")
	Message.create(the_message: "Signs point to yes")
	Message.create(the_message: "Reply hazy try again")
	Message.create(the_message: "Ask again later")
	Message.create(the_message: "Better not tell you now")
	Message.create(the_message: "Cannot predict now")
	Message.create(the_message: "Concentrate and ask again")
	Message.create(the_message: "Don't count on it")
	Message.create(the_message: "My reply is no")
	Message.create(the_message: "My sources say no")
	Message.create(the_message: "Outlook not so good")
	Message.create(the_message: "Very doubtful")

  	message_count = 0
	history_count = 0
	all_messages = Message.all
	histories_are_messages = true
	history_found = false

 	get :index
    get :index
    get :index

    all_histories = History.all
    #puts all_histories.count

    while(histories_are_messages && history_count < all_histories.count)
    	#puts "top loop"
    	
    	while(! history_found && message_count < all_messages.count)
    		#puts "looking"

    		if(all_histories[history_count].message.the_message == all_messages[message_count].the_message)
    			#puts "looking"
    			history_found = true
    		end
    		message_count = message_count + 1
    	end

    	if(! history_found)
    		histories_are_messages = false
    		puts all_histories[history_count].message.the_message
    	end

    	history_found = false
    	history_count = history_count + 1
    	message_count = 0
    end

    assert histories_are_messages

  end
end