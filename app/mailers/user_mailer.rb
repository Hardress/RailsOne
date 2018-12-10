class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
          to: 'your-email@example.com',
          subject: "A new contact form message from #{name}")
  end

  def order_confirmation_email(arg1, arg2)
    return true
  end

end
