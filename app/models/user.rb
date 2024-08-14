class User < ApplicationRecord
  passwordless_with :email # <-- here! this needs to be a column in `users` table

end
