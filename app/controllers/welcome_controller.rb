class WelcomeController < ApplicationController
  def index
    # @failing_message = Message.new(the_message: "fail")

    @all_messages = Message.all.shuffle

    @all_messages[1].histories.create

    # @failing_message.histories.create
  end
end
