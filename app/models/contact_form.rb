class ContactForm < ActiveRecord::Base
  attr_accessible :appointment, :company, :email_1, :email_2, :email_3, :name, :personal_email
  validates :name, :personal_email, :presence => true
end
