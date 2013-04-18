ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "www.gmail.com",
  :user_name            => "moises.gilberto@gmail.com",
  :password             => "Gr33n@new",
  :authentication       => "plain",
  :enable_starttls_auto => true
}