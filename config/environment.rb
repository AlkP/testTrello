# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :port           => '25', # or 2525
    :address        => ENV['POSTMARK_SMTP_SERVER'],
    :user_name      => ENV['POSTMARK_API_TOKEN'],
    :password       => ENV['POSTMARK_API_TOKEN'],
    :domain         => 'damp-journey-47764.herokuapp.com',
    :authentication => :cram_md5, # or :plain for plain-text authentication
    :enable_starttls_auto => true, # or false for unencrypted connection
}
ActionMailer::Base.delivery_method = :smtp