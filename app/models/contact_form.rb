class ContactForm < ActiveRecord::Base
  attr_accessible :appointment, :company, :email_1, :email_2, :email_3, :name, :personal_email
  validates_presence_of :name,  :message => 'Nombre es un campo obligatorio'
  validates_presence_of :personal_email, :message => 'Ingrese un correo'

  validates :personal_email ,:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i , :message => 'Formato de Email es invalido'}
  validates :email_1,:allow_blank => true ,:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i  , :message => 'Formato de Email_1 es invalido'}
  validates :email_2,:allow_blank => true ,:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i  , :message => 'Formato de Email_2 es invalido'}
  validates :email_3,:allow_blank => true ,:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i  , :message => 'Formato de Email_3 es invalido'}
end
