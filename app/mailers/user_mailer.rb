class UserMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def contact_form(email, name, message)
    @message = message
    mail(from:     email,
         to:       'github@sffogworks.com',
         subject:  "A new contact form message from #{name}")
  end
end
