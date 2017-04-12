class User < ApplicationRecord
  include Clearance::User

  enum user_type: [:superadmin, :admin, :student, :teacher]
end
