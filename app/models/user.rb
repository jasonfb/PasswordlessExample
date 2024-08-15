class User < ApplicationRecord
  passwordless_with :email # <-- here! this needs to be a column in `users` table


  passwordless_with :phone
  #
  # def self.fetch_resource_for_passwordless(email)
  #   find_or_create_by(email: email)
  # end
end
