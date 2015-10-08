class WelcomeController < ApplicationController
  def index
  	@all_messages = Message.all
  end

  def show
  end
end
