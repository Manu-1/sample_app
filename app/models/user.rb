class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
<<<<<<< HEAD
                    uniqueness: { case_sensitive: false }
                    has_secure_password
                    # has_secure_password
=======
       				uniqueness: { case_sensitive: false }
>>>>>>> modeling-users
end