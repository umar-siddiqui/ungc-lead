class Notifier < ApplicationMailer
  default from: 'sunny@treeni.com',
          return_path: 'sunny@treeni.com'

  def welcome(recipient)
    #mail(to: recipient.email)
    @account = recipient
    mail(to: recipient.email, subject: "Invitation to join Assesment")
  end
end
