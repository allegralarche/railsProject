class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#emailFormat = /[a-z\d.-]+@[a-z\d.-]+[.][a-z]+/i 
	#validates :name, presence: true
	#validates :email, presence: true, format: {with: emailFormat}
	#validates :password, length: {minimum: 6}
end
