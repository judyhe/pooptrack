ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "pooptrack.com",  
  :user_name            => "users",  
  :password             => "al3w1f3",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}