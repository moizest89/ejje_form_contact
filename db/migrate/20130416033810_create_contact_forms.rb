class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :personal_email
      t.string :appointment
      t.string :company
      t.string :email_1
      t.string :email_2
      t.string :email_3

      t.timestamps
    end
  end
end
