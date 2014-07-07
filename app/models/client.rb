class Client < ActiveRecord::Base
	validates :ClientName, presence: true, length: { maximum: 50 }
	validates :country, presence: true
end
