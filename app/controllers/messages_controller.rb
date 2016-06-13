class MessagesController < ApplicationController
  def index
    @message = Message.new
    # Messageを全て取得する。
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'リクエストを保存しました'
  end

  private
  def message_params
    params.require(:message).permit(:tipe, :media, :start, :finish, :rink)
  end
  ## ここまで
end