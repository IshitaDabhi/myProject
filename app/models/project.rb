class Project < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	  belongs_to :client , class_name:"Project"
	validates :billing_type, presence: true
	validates :description, presence: true
end
