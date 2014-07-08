class Project < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	belongs_to :client 
	validates :billing_type, presence: true
	validates :description, presence: true

	def self.search(search,status,client_id)
  if search
   find(:all, :conditions => ['name = ? OR status = ? OR client_id = ?',search,status,client_id])
  else
    find(:all)
  end
end
end
