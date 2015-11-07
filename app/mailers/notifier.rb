class Notifier < ApplicationMailer
  default from: 'sunny@treeni.com',
          return_path: 'sunny@treeni.com'

  def welcome(user)
    @user = user
    mail(to: user.email, subject: 'Invitation to join Assesment')
  end
end
