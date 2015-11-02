class Message < ActiveRecord::Base
  before_create :send_message

  private

  def send_message
    response = RestClient::Request.new(
      method: :post,
      url: 'https://api.twilio.com/2010-04-01/Accounts/AC8a27199f3d65fbfb936b4eb4048ca0e5/Messages.json',
      user: 'AC8a27199f3d65fbfb936b4eb4048ca0e5',
      password: 'f7f151b39c25e2b6b412b4a0a6836617',
      payload: { Body: body,
                 To: to,
                 From: from}
    ).execute
  end
end
