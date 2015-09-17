class WelcomeController < ApplicationController

  def index
  	# Message.create(the_message: "It is certain")
  	# Message.create(the_message: "It is decidedly so")
  	# Message.create(the_message: "Without a doubt")
  	# Message.create(the_message: "Yes definitely")
  	# Message.create(the_message: "You may rely on it")
  	# Message.create(the_message: "As I see it yes")
  	# Message.create(the_message: "Most likely")
  	# Message.create(the_message: "Outlook good")
  	# Message.create(the_message: "Yes")
  	# Message.create(the_message: "Signs point to yes")
  	# Message.create(the_message: "Reply hazy try again")
  	# Message.create(the_message: "Ask again later")
  	# Message.create(the_message: "Better not tell you now")
  	# Message.create(the_message: "Cannot predict now")
  	# Message.create(the_message: "Concentrate and ask again")
  	# Message.create(the_message: "Don't count on it")
  	# Message.create(the_message: "My reply is no")
  	# Message.create(the_message: "My sources say no")
  	# Message.create(the_message: "Outlook not so good")
  	# Message.create(the_message: "Very doubtful")

    @rand_num = rand(20) + 1

    @answer = Message.find(@rand_num)

    Message.create(the_message: @answer.the_message)

    #@test_index = Message.count

  end
end
