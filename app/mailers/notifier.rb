class Notifier < ApplicationMailer
  default from: 'sunny@treeni.com',
          return_path: 'sunny@treeni.com'

  def welcome(user)
    puts '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
    puts user
    puts '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
    @user = user
    @url = 'localhost:3000/sections'
    mail(to: user.email, subject: 'Invitation to join Assesment')
  end
end
