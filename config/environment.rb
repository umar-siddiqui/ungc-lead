# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
#   :user_name => 'sunny@treeni.com',
#   :password => 'treeni123',
#   :domain => 'localhost:3000',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => 'email@weboapps.com',
    :password             => 'weboqa6186',
    :authentication       => "plain",
    :enable_starttls_auto => true
}
