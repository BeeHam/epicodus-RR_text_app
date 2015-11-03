class MessagesController < ApplicationController

  # def index
  #   @messages = Message.all
  # end
  #
  # def show
  #   @message  = Message.find(params[:id])
  # end

  def new
    @contact = Contact.find(params[:contact_id])
    @message = @contact.messages.new
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @message = @contact.messages.new(message_params)
    if @message.save
      flash[:notice] = "Your message was sent"
      respond_to do |format|
        format.html {redirect_to contact_path(@contact)}
        format.js
      end
    else
      render :new
    end
  end




  private

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end
