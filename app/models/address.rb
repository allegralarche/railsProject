class Address < ActiveRecord::Base
	belongs_to :user
	validate :friend, presence: true
	validates :number, presence: true
	validates :street, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, length: {is:5}, presence: true
	scope :ordered, ->{Address.order(:friend)}
end
