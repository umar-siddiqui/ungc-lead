# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
# ActionMailer::Base.raise_delivery_errors = true
# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
#   :address              => 'smtp.gmail.com',
#   :port                 => 587,
#   :user_name            => 'self_assessment@unglobalcompact.org',
#   :password             => 's3lf4ss3ssm3nt',
#   :enable_starttls_auto => true
# }
