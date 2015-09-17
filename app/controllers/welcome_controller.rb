class WelcomeController < ApplicationController

  def index
    @rand_num = rand(20) + 1
    @answer = Message.find(@rand_num)

    Message.create(the_message: @answer.the_message)
  end
end
