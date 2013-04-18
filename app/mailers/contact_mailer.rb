class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_me.subject
  #
  def contact_me(params)
    @params = params
    @greeting = "Hi"
    #mail to: "to@example.org"
    mail(:from => @params.personal_email, :to => @to, :subject => "360eim - Peak Pilates Appointment")
  end
end
