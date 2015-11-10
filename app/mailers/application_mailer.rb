# class ApplicationMailer
class ApplicationMailer < ActionMailer::Base
  default from: 'selfassessment@unglobalcompact.org'
  layout 'mailer'
end
