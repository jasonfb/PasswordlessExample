class User < ApplicationRecord
  passwordless_with :email_or_phone # <-- here! this needs to be a column in `users` table

  validates_presence_of :email, if: -> { phone.blank? }
  validates_presence_of :phone, if: -> { email.blank? }

  def email_or_phone
    email || phone
  end


  def self.fetch_resource_for_passwordless(email_or_phone)
    if email_or_phone.include?('@')
      user = find_or_create_by(email: email_or_phone)
    else
      user = find_or_create_by(phone: email_or_phone)
    end
    user
  end

  def self.passwordless_phone_field
    :phone
  end

  # passwordless_with :phone
  #
  # def self.fetch_resource_for_passwordless(email)
  #   find_or_create_by(email: email)
  # end


end
