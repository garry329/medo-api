ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    # :user_name => ENV['GMAIL_USERNAME'],
    :user_name => "medoapp123@gmail.com",
    # :password => ENV['GMAIL_PASSWORD'],
    :password => "medoapp123",
    :authentication => "plain",
    :enable_starttls_auto => true
}