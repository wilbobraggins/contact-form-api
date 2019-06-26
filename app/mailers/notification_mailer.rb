class NotificationMailer < ApplicationMailer
  default from: "no-reply@alexisbellydance.com"

  def reply_added
    @user = User.last
    mail(to: "william.marchek@gmail.com", subject: "a reply has been sent")
  end
end
