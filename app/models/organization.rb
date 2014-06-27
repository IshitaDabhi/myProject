class Organization < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :billing_type, presence: true
	validates :description, presence: true
end
