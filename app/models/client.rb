class Client < ActiveRecord::Base
	has_many :projects
	validates :ClientName, presence: true, length: { maximum: 50 }
	validates :country, presence: true
end
