class User < ApplicationRecord
	has_and_belongs_to_many :events

	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 250},
  				format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  	validates :password_digest, presence: true, length: { minimum: 6}
  	has_secure_password
end
