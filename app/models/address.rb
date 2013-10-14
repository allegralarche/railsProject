class Address < ActiveRecord::Base
	validates :number, presence: true
	validates :street, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, length: {is:5}, presence: true
end
