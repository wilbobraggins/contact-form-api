class NotificationMailer < ApplicationMailer
  default from: "no-reply@alexisbellydance.com"

  def reply_added
    mail(to: "my@email.com", subject: "a reply has been sent")
  end
end
