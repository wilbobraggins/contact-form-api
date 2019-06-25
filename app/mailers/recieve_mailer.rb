class RecieveMailer < ApplicationMailer

  def send_mail
    mail(to: ENV['GMAIL_EMAIL'])
  end
end
