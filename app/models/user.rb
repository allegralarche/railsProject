class User < ActiveRecord::Base
	emailFormat = /[a-z\d.-]+@[a-z\d.-]+[.][a-z]+/i 
	validates :name, presence: true
	validates :email, presence: true, format: {with: emailFormat}
	validates :password, length: {minimum: 6}
end
