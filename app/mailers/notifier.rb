# class Notifier
class Notifier < ApplicationMailer
  default from: 'selfassessment@unglobalcompact.org',
          return_path: 'selfassessment@unglobalcompact.org'

  def welcome(user)
    @user = user
    mail(to: user.email, subject: 'Invitation to join Assesment')
  end
end
