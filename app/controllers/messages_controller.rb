class MessagesController < ApplicationController
  def index
    @all_messages = Message.all.shuffle
    @all_messages[0].histories.create
  end

  def new
    @message = Message.new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
  	@message = Message.new(message_params)
  	
    if @message.save
  	 	redirect_to root_path
     else
      render 'new'
    end
  end

  def update
    @message = Message.find(params[:id])
    if @message.update(message_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
  	@message = Message.find(params[:id])
  	@message.destroy

  	redirect_to root_path
  end

  private
  def message_params
  	params.require(:message).permit(:the_message)
  end
end
